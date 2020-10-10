function draw_robot(q,d)
% Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5))*Rx(q(6))*Tx(d6)
d1=d(1);d2=d(2);d3=d(3);d4=d(4);d5=d(5);d6=d(6);
figure;
hold on
view(200,25)
grid on
axis equal
T1=Tz(d1)*Rz(q(1));
plot3(0,0,0,'ro','MarkerSize',3,'LineWidth',3);
plot3([0 T1(1,4)],[0 T1(2,4)],[0 T1(3,4)],'-b','LineWidth', 3);
T2=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2));
plot3([T1(1,4) T2(1,4)],[T1(2,4) T2(2,4)],[T1(3,4) T2(3,4)],'-b','LineWidth',3);
plot3(T2(1,4),T2(2,4),T2(3,4),'ro','MarkerSize',3,'LineWidth', 3);
T3=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3));
plot3([T2(1,4) T3(1,4)],[T2(2,4) T3(2,4)],[T2(3,4) T3(3,4)],'-b','LineWidth', 3);
plot3(T3(1,4),T3(2,4),T3(3,4),'ro','MarkerSize',3,'LineWidth', 3);
T4=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4));
plot3([T3(1,4) T4(1,4)],[T3(2,4) T4(2,4)],[T3(3,4) T4(3,4)],'-b','LineWidth', 3);
plot3(T4(1,4),T4(2,4),T4(3,4),'ro','MarkerSize',3,'LineWidth',3);
T5=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5));
plot3([T4(1,4) T5(1,4)],[T4(2,4) T5(2,4)],[T4(3,4) T5(3,4)],'-b','LineWidth',3);
plot3(T5(1,4),T5(2,4),T5(3,4),'ro','MarkerSize',3,'LineWidth',3);
T6=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5))*Rx(q(6));
plot3([T5(1,4) T6(1,4)],[T5(2,4) T6(2,4)],[T5(3,4) T6(3,4)],'-b','LineWidth', 3);
plot3(T6(1,4),T6(2,4),T6(3,4),'ro','MarkerSize',3,'LineWidth', 3);
T7=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5))*Rx(q(6))*Tx(d6);
plot3([T6(1,4) T7(1,4)],[T6(2,4) T7(2,4)],[T6(3,4) T7(3,4)],'-r','LineWidth', 3);

T7x=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5))*Rx(q(6))*Tx(d6)*Tx(50);
quiver3(T7(1,4),T7(2,4),T7(3,4),T7x(1,4)-T7(1,4),T7x(2,4)-T7(2,4),T7x(3,4)-T7(3,4),0,'-p')
T7y=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5))*Rx(q(6))*Tx(d6)*Ty(50);
quiver3(T7(1,4),T7(2,4),T7(3,4),T7y(1,4)-T7(1,4),T7y(2,4)-T7(2,4),T7y(3,4)-T7(3,4),0,'-c')
T7z=Tz(d1)*Rz(q(1))*Tx(d2)*Ry(q(2))*Tz(d3)*Ry(q(3))*Tz(d4)*Tx(d5)*Rx(q(4))*Ry(q(5))*Rx(q(6))*Tx(d6)*Tz(50);
quiver3(T7(1,4),T7(2,4),T7(3,4),T7z(1,4)-T7(1,4),T7z(2,4)-T7(2,4),T7z(3,4)-T7(3,4),0,'-g')


