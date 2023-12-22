t0 = 0      % Domain of t [0;1000]
tf = 1000   % Domain of t [0;1000]
y(1) = 0      % Initial condition y(0) = 0
y(2) = 0      % Initial condition y'(0) = 0

F01 = 0.4    % Driving amplitudes - f0 = 0.4
F02 = 0.7    % Driving amplitudes - f0 = 0.7

secODE = @(t,Y) osc(t,y,F01);
[T,Y] = ode45(secODE, [t0 tf], [y(1); y(2)])

secODE2 = @(t,Y) osc(t,y,F02);
[T2,Y2] = ode45(secODE2, [t0 tf], [y(1); y(2)])

% Plot setting
x = linspace(0,100,1000);
tiledlayout(2,1)

% Top plot
nexttile
plot(T,Y(:,1), 'ro-')
title('f0 = 0.4')
ylim([-0.2 0.2])

% Bottom plot
nexttile
plot(T2,Y2(:,1), 'bo-')
title('f0 = 0.7')
ylim([-0.2 0.2])
