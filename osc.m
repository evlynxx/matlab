function f = osc(t,y,F0)

% Return a column vector
f=[0;0];
% Oscillator Parameters

% omega0 - resonant frequency
% gamma - damping
% eta - nonlinearity, set to 0 for harmonic
% w - drive frequency
% F0 - drive force

omega0 = 1;
gamma = 0.02;
eta = 0.03;
w = 1.2;

%v1=y, v2=ydot
v1= y(1);
v2= y(2);

% Force Calculation
F = F0*sin(w.*t);

%System of First Order ODEs
f(1) =  [v2]
f(2) =  -gamma*v2 -omega0^2*v1 + eta*v1.^3 + F

% ODE: y'' = - gamma y' - omegaˆ2 y - eta yˆ3 + f0 sin(wt)

end
