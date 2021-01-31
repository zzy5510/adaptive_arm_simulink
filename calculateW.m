syms q1 q2 q3  d1 d2 d3 dq1 dq2 dq3 xc1 xc2 xc3 ddyita1 ddyita2 ddyita3 dyita1 dyita2 dyita3 real
syms Iz3 real
Iz1=0;Iz2=0; Iz3=0; m1=0;m2=0; m3=1;
h=[ Iz1 + Iz2 + Iz3 + d1^2*m2 + d1^2*m3 + d2^2*m3 + 2*d1*m3*xc3*cos(q2 + q3) + 2*d1*d2*m3*cos(q2) + 2*d1*m2*xc2*cos(q2) + 2*d2*m3*xc3*cos(q3), Iz2 + Iz3 + d2^2*m3 + d1*m3*xc3*cos(q2 + q3) + d1*d2*m3*cos(q2) + d1*m2*xc2*cos(q2) + 2*d2*m3*xc3*cos(q3), Iz3 + d1*m3*xc3*cos(q2 + q3) + d2*m3*xc3*cos(q3);
                                 Iz2 + Iz3 + d2^2*m3 + d1*m3*xc3*cos(q2 + q3) + d1*d2*m3*cos(q2) + d1*m2*xc2*cos(q2) + 2*d2*m3*xc3*cos(q3),                                                                 m3*d2^2 + 2*m3*xc3*cos(q3)*d2 + Iz2 + Iz3,                          Iz3 + d2*m3*xc3*cos(q3);
                                                                                          Iz3 + d1*m3*xc3*cos(q2 + q3) + d2*m3*xc3*cos(q3),                                                                                   Iz3 + d2*m3*xc3*cos(q3),                                              Iz3];

c=[ - dq3*(d1*m3*xc3*sin(q2 + q3) + d2*m3*xc3*sin(q3)) - dq2*(d1*m3*xc3*sin(q2 + q3) + d1*d2*m3*sin(q2) + d1*m2*xc2*sin(q2)), - d1*dq1*(d2*m3*sin(q2) + m2*xc2*sin(q2) + m3*xc3*sin(q2 + q3)) - d1*dq2*(d2*m3*sin(q2) + m2*xc2*sin(q2) + m3*xc3*sin(q2 + q3)) - dq3*m3*xc3*(d1*sin(q2 + q3) + d2*sin(q3)), -m3*xc3*(d1*sin(q2 + q3) + d2*sin(q3))*(dq1 + dq2 + dq3);
                              dq1*(d1*m3*xc3*sin(q2 + q3) + d1*d2*m3*sin(q2) + d1*m2*xc2*sin(q2)) - d2*dq3*m3*xc3*sin(q3),                                                                                                                                                      -d2*dq3*m3*xc3*sin(q3),                     -d2*m3*xc3*sin(q3)*(dq1 + dq2 + dq3);
                                                 dq1*(d1*m3*xc3*sin(q2 + q3) + d2*m3*xc3*sin(q3)) + d2*dq2*m3*xc3*sin(q3),                                                                                                                                               d2*m3*xc3*sin(q3)*(dq1 + dq2),                                                        0];
simplify(h);
simplify(c);
ddyita=[ddyita1;ddyita2;ddyita3];
dyita=[dyita1;dyita2;dyita3];
w=h*ddyita+c*dyita

 