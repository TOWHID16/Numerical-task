clc;
e = input('Enter an equation(in terms of x): ', 's');
j = str2func(['@(x) ', e]);
t = input('Enter tolerance: ');
Ans = [];
for i = 1:5
  p = input('Enter first interval: ');
  q = input('Enter second interval: ');
  if j(p)*j(q) < 0
    break;
  else
    fprintf('No root lies between given intervals.\n')
  end
end
while(abs(c - q) > t || abs(c - p) > t)
  c = (p*j(q) - q*j(p))/(j(q) - j(p));
  Ans = [c, Ans];
    break;
  endif
  if j(p)*j(c) < 0
    q = c;
  elseif j(q)*j(c) < 0
    p = c;
  end
end
x = 0:0.1:10;
hold on
plot(x, j(x));
plot(c, j(c), 'xr');
title([e, ' = 0']);
titleFontSize = 16;
set(get(gca, 'title'), 'FontSize', titleFontSize);
axisLabelFontSize = 12;
set(gca, 'FontSize', axisLabelFontSize);
set(gca, 'xAxisLocation', 'origin');
fprintf('Root is %0.4f\n', c);
%Ans = Ans';
disp(Ans');

