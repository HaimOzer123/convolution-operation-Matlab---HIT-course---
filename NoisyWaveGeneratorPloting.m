function [time,signal,noise,noisysignal] = NoisyWaveGeneratorPloting(startTime,endTime,fs,A,f)
%id 316063569

dt = 1/fs;
time = (startTime:dt:endTime);
signal = A*cos(2*pi*f*time); % wave = signal 
noise = randn(1,length(time));
noisysignal = signal + noise;

subplot(2,1,1)
plot(time,signal,'b') %i can't recognize if i need to color the line or get the default one.
hold on
plot(time,noise,'r')
hold off
xlabel('Time')
ylabel('Amplitud')
legend ('Signal','Noise')

subplot(2,1,2)
plot(time,noisysignal,'b') %same here, can't recognize if i need to color the line or get the default one.
title('NoisySignal')
xlabel('time')
ylabel('Amplitude')
end

% there is a spelling mistake in the question 2.2. written "bad" instead
% of "noise".