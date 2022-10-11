%%%%%%%%%%  PRUEBA SENSOR EN LA RODILLA BUENO %%%%%%%%%%

clear all
bag = rosbag("2022-10-08-18-23-37.bag")
rosbag info 2022-10-08-18-23-37.bag
bag.MessageList
bagselect1 = select(bag,"Topic","/pmodnav_chatter");
msgs = readMessages(bagselect1,"DataFormat","struct");

for i = 1: length(msgs)
    acellX(i) = msgs{i,1}.AccelX;
    acellY(i) = msgs{i,1}.AccelY;
    acellZ(i) = msgs{i,1}.AccelZ;
    
    gyroX(i) = msgs{i,1}.GyroX;
    gyroY(i) = msgs{i,1}.GyroY;
    gyroZ(i) = msgs{i,1}.GyroZ;

    magX(i) =msgs{i,1}.MagX;
    magY(i) =msgs{i,1}.MagY;
    magZ(i) =msgs{i,1}.MagZ;

    alt(i) =msgs{i,1}.Alt;
    temp(i) =msgs{i,1}.Temp;

    t(i) = 0.1*i %Duration in seconds
end 

t=t-1.35
tfinal=max(t)

%Acceleration: +/-2G
figure(1);
subplot(3,1,1);
plot(t,acellX,'b');
title('Acceleration X');
%legend('AccelX');
xlabel('time(s)');
ylabel('G=9,8m/s');
axis([0 tfinal -2.5 2.5]);

subplot(3,1,2);
plot(t,acellY,'r');
title('Acceleration Y');
%legend('AccelY')
xlabel('time(s)');
ylabel('G=9,8m/s');
axis([0 tfinal -2.5 2.5]);

subplot(3,1,3);
plot(t,acellZ,'g');
title('Acceleration Z');
%legend('Accelz')
xlabel('time(s)');
ylabel('G=9,8m/s');
axis([0 tfinal -2.5 2.5]);



figure(2);
plot(t,acellX,'b'); hold on
plot(t, acellY,'r');
plot(t, acellZ,'g'); hold off;
axis([0 tfinal -2.5 2.5]);
xlabel('time(s)');
ylabel('G=9,8m/s');
legend('AccelX','AccelY','AccelZ');
title('Acceleration');


%Gyroscope: +/- 245DPS
figure(3)
subplot(3,1,1);
plot(t,gyroX,'b');
title('Gyroscope X');
%legend('GyroX');
xlabel('time(s)');
ylabel('DPS');
axis([0 tfinal -300 300]);

subplot(3,1,2);
plot(t,gyroY,'r');
title('Gyroscope Y');
%legend('GyroY');
xlabel('time(s)');
ylabel('DPS');
axis([0 tfinal -300 300]);

subplot(3,1,3);
plot(t,gyroZ,'g');
title('Gyroscope Z');
%legend('GyroZ');
xlabel('time(s)');
ylabel('DPS');
axis([0 tfinal -300 300]);


%Magnetometer: +/- 4Gauss
figure(4)
subplot(3,1,1);
plot(t,magX,'b');
title('Magnetometer X');
%legend('MagX');
xlabel('time(s)');
ylabel('Gauss');
axis([0 tfinal -5 5]);

subplot(3,1,2);
plot(t,magY,'r');
title('Magnotemeter Y');
%legend('MagY');
xlabel('time(s)');
ylabel('Gauss');
axis([0 tfinal -5 5]);

subplot(3,1,3);
plot(t,magZ,'g');
title('Magnotemeter Z');
%legend('MagZ');
xlabel('time(s)');
ylabel('Gauss');
axis([0 tfinal -5 5]);


%Pressure: hpa
figure(5)
plot(t,alt,'b');
title('Altimeter');
%legend('Alt');
xlabel('time(s)');
ylabel('Pressure(hpa)');
axis([0 tfinal -10 10]);


%Temperatura: Celsius
figure(6)
plot(t,temp,'b');
title('Temperature');
%legend('Temp');
xlabel('time(s)');
ylabel('Temeprature (ªC)');
axis([0 tfinal 0 100]);

