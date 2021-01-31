!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 0.5  &
   spacing_for_grid = 1.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = MODEL_1
!
model attributes  &
   model_name = .MODEL_1  &
   size_of_icons = 0.5
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .MODEL_1.torque1  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.torque2  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.torque3  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.v1  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.v2  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.v3  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.q3m  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.q2m  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.q1m  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.a1  &
   adams_id = 16  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.a2  &
   adams_id = 17  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.a3  &
   adams_id = 18  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .MODEL_1.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+11  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.ground.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.ground.MARKER_8  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.ground.MARKER_14  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.ground  &
   material_type = .MODEL_1.steel
!
part attributes  &
   part_name = .MODEL_1.ground  &
   name_visibility = off  &
   size_of_icons = 0.5
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_1.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_2.MARKER_1  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_2  &
   adams_id = 2  &
   location = 1.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_2.MARKER_2  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_2.cm  &
   adams_id = 19  &
   location = 0.5, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_2.cm  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_2.MARKER_7  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_10  &
   adams_id = 10  &
   location = 1.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_13  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_16  &
   adams_id = 16  &
   location = 1.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.PART_2  &
   mass = 10.0  &
   center_of_mass_marker = .MODEL_1.PART_2.cm  &
   ixx = 1.05  &
   iyy = 1.05  &
   izz = 4.0E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .MODEL_1.PART_2.LINK_1  &
   i_marker = .MODEL_1.PART_2.MARKER_1  &
   j_marker = .MODEL_1.PART_2.MARKER_2  &
   width = 0.1  &
   depth = 5.0E-02
!
part attributes  &
   part_name = .MODEL_1.PART_2  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 0.5
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_1.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_3  &
   adams_id = 3  &
   location = 1.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_3.MARKER_3  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_4  &
   adams_id = 4  &
   location = 2.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_3.MARKER_4  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_3.cm  &
   adams_id = 20  &
   location = 1.5, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_3.cm  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_9  &
   adams_id = 9  &
   location = 1.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_12  &
   adams_id = 12  &
   location = 2.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_15  &
   adams_id = 15  &
   location = 1.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_18  &
   adams_id = 18  &
   location = 2.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.PART_3  &
   mass = 10.0  &
   center_of_mass_marker = .MODEL_1.PART_3.cm  &
   ixx = 1.05  &
   iyy = 1.05  &
   izz = 4.0E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .MODEL_1.PART_3.LINK_2  &
   i_marker = .MODEL_1.PART_3.MARKER_3  &
   j_marker = .MODEL_1.PART_3.MARKER_4  &
   width = 0.1  &
   depth = 5.0E-02
!
part attributes  &
   part_name = .MODEL_1.PART_3  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 0.5
!
!----------------------------------- PART_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_1.PART_4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.PART_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.PART_4.MARKER_5  &
   adams_id = 5  &
   location = 2.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_4.MARKER_5  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_4.MARKER_6  &
   adams_id = 6  &
   location = 3.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_4.MARKER_6  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_4.cm  &
   adams_id = 21  &
   location = 2.5, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .MODEL_1.PART_4.cm  &
   size_of_icons = 0.5
!
marker create  &
   marker_name = .MODEL_1.PART_4.MARKER_11  &
   adams_id = 11  &
   location = 2.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_4.MARKER_17  &
   adams_id = 17  &
   location = 2.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.PART_4  &
   mass = 10.0  &
   center_of_mass_marker = .MODEL_1.PART_4.cm  &
   ixx = 1.05  &
   iyy = 1.05  &
   izz = 4.0E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .MODEL_1.PART_4.LINK_3  &
   i_marker = .MODEL_1.PART_4.MARKER_5  &
   j_marker = .MODEL_1.PART_4.MARKER_6  &
   width = 0.1  &
   depth = 5.0E-02
!
part attributes  &
   part_name = .MODEL_1.PART_4  &
   color = MAIZE  &
   name_visibility = off  &
   size_of_icons = 0.5
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .MODEL_1.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .MODEL_1.PART_2.MARKER_7  &
   j_marker_name = .MODEL_1.ground.MARKER_8
!
constraint attributes  &
   constraint_name = .MODEL_1.JOINT_1  &
   name_visibility = off  &
   size_of_icons = 0.5
!
constraint create joint revolute  &
   joint_name = .MODEL_1.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .MODEL_1.PART_3.MARKER_9  &
   j_marker_name = .MODEL_1.PART_2.MARKER_10
!
constraint attributes  &
   constraint_name = .MODEL_1.JOINT_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .MODEL_1.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .MODEL_1.PART_4.MARKER_11  &
   j_marker_name = .MODEL_1.PART_3.MARKER_12
!
constraint attributes  &
   constraint_name = .MODEL_1.JOINT_3  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .MODEL_1.PART_2.MARKER_13  &
   j_marker_name = .MODEL_1.ground.MARKER_14  &
   action_only = off  &
   function = ""
!
force attributes  &
   force_name = .MODEL_1.SFORCE_1  &
   size_of_icons = 0.2
!
force create direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_2  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .MODEL_1.PART_3.MARKER_15  &
   j_marker_name = .MODEL_1.PART_2.MARKER_16  &
   action_only = off  &
   function = ""
!
force attributes  &
   force_name = .MODEL_1.SFORCE_2  &
   size_of_icons = 0.2
!
force create direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_3  &
   adams_id = 3  &
   type_of_freedom = rotational  &
   i_marker_name = .MODEL_1.PART_4.MARKER_17  &
   j_marker_name = .MODEL_1.PART_3.MARKER_18  &
   action_only = off  &
   function = ""
!
force attributes  &
   force_name = .MODEL_1.SFORCE_3  &
   size_of_icons = 0.2
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .MODEL_1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=50 model_name=.MODEL_1"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .MODEL_1.Three_Dof  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .MODEL_1.td  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .MODEL_1.c3  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .MODEL_1.witha  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .MODEL_1.withaa  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .MODEL_1.witha2  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.input_channels  &
   object_value =   &
      .MODEL_1.torque1,  &
      .MODEL_1.torque2,  &
      .MODEL_1.torque3
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.output_channels  &
   object_value =   &
      .MODEL_1.q1m,  &
      .MODEL_1.q2m,  &
      .MODEL_1.q3m,  &
      .MODEL_1.v1,  &
      .MODEL_1.v2,  &
      .MODEL_1.v3
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.file_name  &
   string_value = "Three_Dof"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.host  &
   string_value = "LAPTOP-5088IVHI.DHCP HOST"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.Three_Dof.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .MODEL_1.Three_Dof
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.td.input_channels  &
   object_value =   &
      .MODEL_1.torque1,  &
      .MODEL_1.torque2,  &
      .MODEL_1.torque3
!
variable modify  &
   variable_name = .MODEL_1.td.output_channels  &
   object_value =   &
      .MODEL_1.q1m,  &
      .MODEL_1.q2m,  &
      .MODEL_1.q3m,  &
      .MODEL_1.v1,  &
      .MODEL_1.v2,  &
      .MODEL_1.v3
!
variable modify  &
   variable_name = .MODEL_1.td.file_name  &
   string_value = "td"
!
variable modify  &
   variable_name = .MODEL_1.td.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.td.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.td.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.td.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .MODEL_1.td.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.td.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.td.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.td.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.td.host  &
   string_value = "LAPTOP-5088IVHI.DHCP HOST"
!
variable modify  &
   variable_name = .MODEL_1.td.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.td.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.td.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .MODEL_1.td.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.td.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.td.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.td.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.td.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.td.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.td.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .MODEL_1.td
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.c3.input_channels  &
   object_value =   &
      .MODEL_1.torque1,  &
      .MODEL_1.torque2,  &
      .MODEL_1.torque3
!
variable modify  &
   variable_name = .MODEL_1.c3.output_channels  &
   object_value =   &
      .MODEL_1.q1m,  &
      .MODEL_1.q2m,  &
      .MODEL_1.q3m,  &
      .MODEL_1.v1,  &
      .MODEL_1.v2,  &
      .MODEL_1.v3
!
variable modify  &
   variable_name = .MODEL_1.c3.file_name  &
   string_value = "c3"
!
variable modify  &
   variable_name = .MODEL_1.c3.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.c3.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.c3.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.c3.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .MODEL_1.c3.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.c3.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.c3.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.c3.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.c3.host  &
   string_value = "LAPTOP-5088IVHI.DHCP HOST"
!
variable modify  &
   variable_name = .MODEL_1.c3.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.c3.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.c3.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .MODEL_1.c3.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.c3.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.c3.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.c3.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.c3.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.c3.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.c3.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .MODEL_1.c3
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.witha.input_channels  &
   object_value =   &
      .MODEL_1.torque1,  &
      .MODEL_1.torque2,  &
      .MODEL_1.torque3
!
variable modify  &
   variable_name = .MODEL_1.witha.output_channels  &
   object_value =   &
      .MODEL_1.q1m,  &
      .MODEL_1.q2m,  &
      .MODEL_1.q3m,  &
      .MODEL_1.v1,  &
      .MODEL_1.v2,  &
      .MODEL_1.v3,  &
      .MODEL_1.a1,  &
      .MODEL_1.a2,  &
      .MODEL_1.a3
!
variable modify  &
   variable_name = .MODEL_1.witha.file_name  &
   string_value = "witha"
!
variable modify  &
   variable_name = .MODEL_1.witha.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.witha.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.witha.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.witha.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .MODEL_1.witha.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.witha.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.witha.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.witha.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.witha.host  &
   string_value = "LAPTOP-5088IVHI"
!
variable modify  &
   variable_name = .MODEL_1.witha.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.witha.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.witha.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .MODEL_1.witha.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.witha.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.witha.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .MODEL_1.witha
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.withaa.input_channels  &
   object_value =   &
      .MODEL_1.torque1,  &
      .MODEL_1.torque2,  &
      .MODEL_1.torque3
!
variable modify  &
   variable_name = .MODEL_1.withaa.output_channels  &
   object_value =   &
      .MODEL_1.q1m,  &
      .MODEL_1.q2m,  &
      .MODEL_1.q3m,  &
      .MODEL_1.v1,  &
      .MODEL_1.v2,  &
      .MODEL_1.v3,  &
      .MODEL_1.a1,  &
      .MODEL_1.a2,  &
      .MODEL_1.a3
!
variable modify  &
   variable_name = .MODEL_1.withaa.file_name  &
   string_value = "withaa"
!
variable modify  &
   variable_name = .MODEL_1.withaa.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.withaa.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.withaa.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.withaa.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .MODEL_1.withaa.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.withaa.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.withaa.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.withaa.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.withaa.host  &
   string_value = "LAPTOP-5088IVHI"
!
variable modify  &
   variable_name = .MODEL_1.withaa.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.withaa.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.withaa.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .MODEL_1.withaa.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.withaa.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.withaa.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.withaa.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.withaa.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.withaa.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.withaa.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .MODEL_1.withaa
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.witha2.input_channels  &
   object_value =   &
      .MODEL_1.torque1,  &
      .MODEL_1.torque2,  &
      .MODEL_1.torque3
!
variable modify  &
   variable_name = .MODEL_1.witha2.output_channels  &
   object_value =   &
      .MODEL_1.q1m,  &
      .MODEL_1.q2m,  &
      .MODEL_1.q3m,  &
      .MODEL_1.v1,  &
      .MODEL_1.v2,  &
      .MODEL_1.v3,  &
      .MODEL_1.a1,  &
      .MODEL_1.a2,  &
      .MODEL_1.a3
!
variable modify  &
   variable_name = .MODEL_1.witha2.file_name  &
   string_value = "witha2"
!
variable modify  &
   variable_name = .MODEL_1.witha2.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.witha2.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.witha2.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.witha2.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .MODEL_1.witha2.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.witha2.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.witha2.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.witha2.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.witha2.host  &
   string_value = "LAPTOP-5088IVHI"
!
variable modify  &
   variable_name = .MODEL_1.witha2.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.witha2.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.witha2.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .MODEL_1.witha2.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.witha2.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.witha2.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha2.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha2.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha2.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .MODEL_1.witha2.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .MODEL_1.witha2
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
geometry create shape force  &
   force_name = .MODEL_1.SFORCE_1_force_graphic_1  &
   adams_id = 1  &
   force_element_name = .MODEL_1.SFORCE_1  &
   applied_at_marker_name = .MODEL_1.PART_2.MARKER_13
!
geometry create shape force  &
   force_name = .MODEL_1.SFORCE_1_2_force_graphic_1  &
   adams_id = 2  &
   force_element_name = .MODEL_1.SFORCE_2  &
   applied_at_marker_name = .MODEL_1.PART_3.MARKER_15
!
geometry create shape force  &
   force_name = .MODEL_1.SFORCE_1_3_force_graphic_1  &
   adams_id = 3  &
   force_element_name = .MODEL_1.SFORCE_3  &
   applied_at_marker_name = .MODEL_1.PART_4.MARKER_17
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .MODEL_1.MOTION_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_1.JOINT_1  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_1.MOTION_1  &
   active = off  &
   name_visibility = off  &
   size_of_icons = 0.1
!
constraint create motion_generator  &
   motion_name = .MODEL_1.MOTION_2  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_1.JOINT_2  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_1.MOTION_2  &
   active = off  &
   name_visibility = off  &
   size_of_icons = 0.1
!
constraint create motion_generator  &
   motion_name = .MODEL_1.MOTION_3  &
   adams_id = 3  &
   type_of_freedom = rotational  &
   joint_name = .MODEL_1.JOINT_3  &
   function = ""
!
constraint attributes  &
   constraint_name = .MODEL_1.MOTION_3  &
   active = off  &
   name_visibility = off  &
   size_of_icons = 0.1
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .MODEL_1.gravity  &
   visibility = off  &
   size_of_icons = 0.2
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .MODEL_1.JOINT_1_MEA_1  &
   from_first = no  &
   object = .MODEL_1.JOINT_1  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.JOINT_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.JOINT_2_MEA_1  &
   from_first = no  &
   object = .MODEL_1.JOINT_2  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.JOINT_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.JOINT_3_MEA_1  &
   from_first = no  &
   object = .MODEL_1.JOINT_3  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.JOINT_3_MEA_1  &
   color = WHITE
!
measure create function  &
   measure_name = .MODEL_1.v1_VALUE_1  &
   function = ""  &
   legend = "Value of state variable '.MODEL_1.v1' "  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.v1_VALUE_1  &
   color = WHITE
!
measure create function  &
   measure_name = .MODEL_1.v2_VALUE_1  &
   function = ""  &
   legend = "Value of state variable '.MODEL_1.v2' "  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.v2_VALUE_1  &
   color = WHITE
!
measure create function  &
   measure_name = .MODEL_1.a1_VALUE_1  &
   function = ""  &
   legend = "Value of state variable '.MODEL_1.a1' "  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.a1_VALUE_1  &
   color = WHITE
!
measure create function  &
   measure_name = .MODEL_1.v3_VALUE_1  &
   function = ""  &
   legend = "Value of state variable '.MODEL_1.v3' "  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.v3_VALUE_1  &
   color = WHITE
!
measure create function  &
   measure_name = .MODEL_1.a2_VALUE_1  &
   function = ""  &
   legend = "Value of state variable '.MODEL_1.a2' "  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.a2_VALUE_1  &
   color = WHITE
!
measure create function  &
   measure_name = .MODEL_1.a3_VALUE_1  &
   function = ""  &
   legend = "Value of state variable '.MODEL_1.a3' "  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.a3_VALUE_1  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .MODEL_1.MOTION_1  &
   function = "0.1*time*time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_1.MOTION_2  &
   function = "0.2*time"
!
constraint modify motion_generator  &
   motion_name = .MODEL_1.MOTION_3  &
   function = "0.3*time"
!
data_element modify variable  &
   variable_name = .MODEL_1.torque1  &
   function = "0"
!
data_element modify variable  &
   variable_name = .MODEL_1.torque2  &
   function = "0"
!
data_element modify variable  &
   variable_name = .MODEL_1.torque3  &
   function = "0"
!
data_element modify variable  &
   variable_name = .MODEL_1.v1  &
   function = "WZ( .MODEL_1.PART_2.MARKER_7, .MODEL_1.ground.MARKER_8,.MODEL_1.ground.MARKER_8)"
!
data_element modify variable  &
   variable_name = .MODEL_1.v2  &
   function = "WZ( .MODEL_1.PART_3.MARKER_9, .MODEL_1.PART_2.MARKER_10,.MODEL_1.PART_2.MARKER_10)"
!
data_element modify variable  &
   variable_name = .MODEL_1.v3  &
   function = "WZ( .MODEL_1.PART_4.MARKER_11, .MODEL_1.PART_3.MARKER_12, .MODEL_1.PART_3.MARKER_12)"
!
data_element modify variable  &
   variable_name = .MODEL_1.q3m  &
   function = ".MODEL_1.JOINT_3_MEA_1*3.1415926535/180"
!
data_element modify variable  &
   variable_name = .MODEL_1.q2m  &
   function = ".MODEL_1.JOINT_2_MEA_1*3.1415926535/180"
!
data_element modify variable  &
   variable_name = .MODEL_1.q1m  &
   function = ".MODEL_1.JOINT_1_MEA_1*3.1415926535/180"
!
data_element modify variable  &
   variable_name = .MODEL_1.a1  &
   function = "WDTZ( .MODEL_1.PART_2.MARKER_7, .MODEL_1.ground.MARKER_8,.MODEL_1.ground.MARKER_8, .MODEL_1.ground.MARKER_8)"
!
data_element modify variable  &
   variable_name = .MODEL_1.a2  &
   function = "WDTZ( .MODEL_1.PART_3.MARKER_9, .MODEL_1.PART_2.MARKER_10, .MODEL_1.PART_2.MARKER_10, .MODEL_1.PART_2.MARKER_10)"
!
data_element modify variable  &
   variable_name = .MODEL_1.a3  &
   function = "WDTZ( .MODEL_1.PART_4.MARKER_11, .MODEL_1.PART_3.MARKER_12,.MODEL_1.PART_3.MARKER_12, .MODEL_1.PART_3.MARKER_12)"
!
measure modify function  &
   measure_name = .MODEL_1.v1_VALUE_1  &
   function = "varval( .MODEL_1.v1)"
!
measure modify function  &
   measure_name = .MODEL_1.v2_VALUE_1  &
   function = "varval( .MODEL_1.v2)"
!
measure modify function  &
   measure_name = .MODEL_1.a1_VALUE_1  &
   function = "varval( .MODEL_1.a1)"
!
measure modify function  &
   measure_name = .MODEL_1.v3_VALUE_1  &
   function = "varval( .MODEL_1.v3)"
!
measure modify function  &
   measure_name = .MODEL_1.a2_VALUE_1  &
   function = "varval( .MODEL_1.a2)"
!
measure modify function  &
   measure_name = .MODEL_1.a3_VALUE_1  &
   function = "varval( .MODEL_1.a3)"
!
force modify direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_1  &
   function = "VARVAL(.MODEL_1.torque1)"
!
force modify direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_2  &
   function = "VARVAL(.MODEL_1.torque2)"
!
force modify direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_3  &
   function = "VARVAL(.MODEL_1.torque3)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.Three_Dof
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.td
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.c3
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.witha
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.withaa
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.witha2
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape link  &
   link_name = .MODEL_1.PART_2.LINK_1  &
   width = (0.1meter)  &
   depth = (5.0E-02meter)
!
geometry modify shape link  &
   link_name = .MODEL_1.PART_3.LINK_2  &
   width = (0.1meter)  &
   depth = (5.0E-02meter)
!
geometry modify shape link  &
   link_name = .MODEL_1.PART_4.LINK_3  &
   width = (0.1meter)  &
   depth = (5.0E-02meter)
!
material modify  &
   material_name = .MODEL_1.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
geometry modify shape force  &
   force_name = .MODEL_1.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.MODEL_1.SFORCE_1.i)
!
geometry modify shape force  &
   force_name = .MODEL_1.SFORCE_1_2_force_graphic_1  &
   applied_at_marker_name = (.MODEL_1.SFORCE_2.i)
!
geometry modify shape force  &
   force_name = .MODEL_1.SFORCE_1_3_force_graphic_1  &
   applied_at_marker_name = (.MODEL_1.SFORCE_3.i)
!
model display  &
   model_name = MODEL_1
