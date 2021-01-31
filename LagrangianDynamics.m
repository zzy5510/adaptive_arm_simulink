function [H,C,torque] = LagrangianDynamics(dh_list, mass_list, mass_center_list, inertia_tensor_list)

[rows, columns] = size(dh_list);
number_of_links = rows;
if columns ~= 4
    error('wrong DH parameters!')
end

for i = 1:rows
    % 定义关节位置，速度，加速度符号
    eval(['syms ','q',num2str(i),' real;']);%执行 syms qi real;语句 
    eval(['syms ','dq',num2str(i),' real;']);%执行 syms dqi real;语句 
    eval(['syms ','ddq',num2str(i),' real;']);%执行 syms ddqi real;语句 
    eval(['q(i)=','q',num2str(i),';']);
    eval(['dq(i)=','dq',num2str(i),';']);
    eval(['ddq(i)=','ddq',num2str(i),';']);
end

A = sym([]);
for i = 1:number_of_links
    dh = dh_list(i,:);
    alpha(i) = dh(1);
    a(i) = dh(2);
    d(i) = dh(3);
    q(i) = dh(4);
    A(:,:,i) = MDHTrans(dh(1),dh(2),dh(3),dh(4));
end
A = simplify(A);

% 计算每个连杆坐标系在{0}系下的表达
A0 = sym([]);
for i = 1:number_of_links
    A0(:,:,i) = eye(4,4);
    for j = 1:i
        A0(:,:,i) = A0(:,:,i)*A(:,:,j);
    end
end
A0 = simplify(A0);

J = sym([]);
for i = 1:number_of_links
    m=mass_list(i);
    c=mass_center_list(i,:);
    I=inertia_tensor_list(:,:,i);
    x=c(1);
    y=c(2);
    z=c(3);
    J(:,:,i)=[(-I(1,1)+I(2,2)+I(3,3))/2 I(1,2) I(1,3) m*x;
        I(1,2) (I(1,1)-I(2,2)+I(3,3))/2 I(2,3) m*y;
        I(1,3) I(2,3) (I(1,1)+I(2,2)-I(3,3))/2 m*z;
        m*x m*y m*z m];
end

% 计算H(q),由H(q)对称性，只需计算上三角部分
syms tr
for i = 1:number_of_links
    for j = i:number_of_links
        tr = 0;
        for k = j:number_of_links
            tr = tr + trace(eval(['diff(A0(:,:,k),q',num2str(i),')'])*J(:,:,k)*...
                eval(['diff(transpose(A0(:,:,k)),q',num2str(j),')']));
        end
        H(i,j) = simplify(tr);
        H(j,i) = H(i,j);
    end
end

% 计算C(q)
for i = 1:number_of_links
    for j = 1:number_of_links
        c = 0;
        for k = 1:number_of_links
            c = c + 1/2*(eval(['diff(H(i,j),q',num2str(k),')'])...
                        + eval(['diff(H(i,k),q',num2str(j),')'])...
                        - eval(['diff(H(j,k),q',num2str(i),')']))*eval(['dq',num2str(k)]);
        end
        C(i,j) = simplify(c);
    end
end

syms gc real

torque=H*ddq'+C*dq';
simplify(torque);
end

