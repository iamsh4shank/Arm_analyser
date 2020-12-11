function [Theta1,Theta2] = InverseKinematics(Xd,Yd)
l1 = 1;
l2 = 1;
Theta2 = acos((Xd^2+Yd^2 - l1^2 - l2^2)/(2*l1*l2));
s_Theta2 = sin(Theta2);
c_Theta2 = cos(Theta2);
Theta1 = atan2(Yd,Xd) - atan2(l2*s_Theta2, (l1+l2*c_Theta2));
