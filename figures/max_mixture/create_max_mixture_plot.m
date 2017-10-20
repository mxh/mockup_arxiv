%% parameters
mu = [0.5 1.5];
sigma = [0.1 0.08];
w = [0.4 0.6];

%% GMM
x = 0:0.01:2;
y = zeros(numel(x), 1);
for i=1:numel(mu)
    y = y + w(i) * mvnpdf(x', mu(i), sigma(i));
end
plot(x, y, 'b-');
hold on;
%% max mixture
x = 0:0.01:2;
y = zeros(numel(x), 1);
for i=1:numel(mu)
    y = max(y, w(i) * mvnpdf(x', mu(i), sigma(i)))
end
plot(x, y, 'r-')