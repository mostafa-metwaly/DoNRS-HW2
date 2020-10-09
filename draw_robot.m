function draw_robot(q,d)
% Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4)*Rx(q5)*Tx(d5)*Rz(q6)*Tz(d6)
q1=q(1);q2=q(2);q3=q(3);q4=q(4);q5=q(5);q6=q(6)
d1=d(1);d2=d(2);d3=d(3);d4=d(4);d5=d(5);d6=d(6)
figure;
hold on
view(200,25)
grid on
axis equal
T1=Rz(q(1));
plot3(0,0,0,'ro','MarkerSize',3,'LineWidth',3);
plot3([0 T1(1,4)],[0 T1(2,4)],[0 T1(3,4)],'-b','LineWidth', 5);
T2=Rz(q1)*Tz(d1);
plot3([T1(1,4) T2(1,4)],[T1(2,4) T2(2,4)],[T1(3,4) T2(3,4)],'-b','LineWidth',3);
plot3(T2(1,4),T2(2,4),T2(3,4),'ro','MarkerSize',3,'LineWidth', 3);
T3=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2);
plot3([T2(1,4) T3(1,4)],[T2(2,4) T3(2,4)],[T2(3,4) T3(3,4)],'-b','LineWidth', 3);
plot3(T3(1,4),T3(2,4),T3(3,4),'ro','MarkerSize',3,'LineWidth', 3);
T4=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3);
plot3([T3(1,4) T4(1,4)],[T3(2,4) T4(2,4)],[T3(3,4) T4(3,4)],'-b','LineWidth', 3);
plot3(T4(1,4),T4(2,4),T4(3,4),'ro','MarkerSize',3,'LineWidth',3);
T5=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4);
plot3([T4(1,4) T5(1,4)],[T4(2,4) T5(2,4)],[T4(3,4) T5(3,4)],'-b','LineWidth',3);
plot3(T5(1,4),T5(2,4),T5(3,4),'ro','MarkerSize',3,'LineWidth',3);
T6=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4)*Rx(q5)*Tx(d5);
plot3([T5(1,4) T6(1,4)],[T5(2,4) T6(2,4)],[T5(3,4) T6(3,4)],'-b','LineWidth', 3);
plot3(T6(1,4),T6(2,4),T6(3,4),'ro','MarkerSize',3,'LineWidth', 3);
T7=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4)*Rx(q5)*Tx(d5)*Rz(q6)*Tz(d6);
plot3([T6(1,4) T7(1,4)],[T6(2,4) T7(2,4)],[T6(3,4) T7(3,4)],'-r','LineWidth', 3);

T7x=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4)*Rx(q5)*Tx(d5)*Rz(q6)*Tz(d6)*Tx(0.1);
quiver3(T7(1,4),T7(2,4),T7(3,4),T7x(1,4)-T7(1,4),T7x(2,4)-T7(2,4),T7x(3,4)-T7(3,4),0,'-p')
T7y=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4)*Rx(q5)*Tx(d5)*Rz(q6)*Tz(d6)*Ty(0.1);
quiver3(T7(1,4),T7(2,4),T7(3,4),T7y(1,4)-T7(1,4),T7y(2,4)-T7(2,4),T7y(3,4)-T7(3,4),0,'-c')
T7z=Rz(q1)*Tz(d1)*Rx(-q2)*Tx(d2)*Rz(q3)*Tx(d3) *Rz(q4)*Tz(d4)*Rx(q5)*Tx(d5)*Rz(q6)*Tz(d6)*Tz(0.1);
quiver3(T7(1,4),T7(2,4),T7(3,4),T7z(1,4)-T7(1,4),T7z(2,4)-T7(2,4),T7z(3,4)-T7(3,4),0,'-g')


