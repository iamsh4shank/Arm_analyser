function [X,Y] = Forwardkinematics(Theta1, Theta2)
l1 = 1;
l2 = 1;
T10 = [cos(Theta1), -sin(Theta1), 0, l1*cos(Theta1);
    sin(Theta1), cos(Theta1), 0, l1*sin(Theta1);
    0, 0, 1, 0;
    0, 0, 0, 1];
T21 = [cos(Theta2), -sin(Theta2), 0, l1*cos(Theta2);
    sin(Theta2), cos(Theta2), 0, l1*sin(Theta2);
    0, 0, 1, 0;
    0, 0, 0, 1];
T20 = T10*T21;
X = T20(1,4);
Y = T20(2,4);
