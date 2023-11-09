clc;
e = input('Enter an equation(in terms of x): ', 's');
j = str2func(['@(x) ', e]);
t = input('Enter tolerance: ');
Ans = [];
for a = 1:5
  p = input('Enter first interval: ');
  q = input('Enter second interval: ');
  if j(p)*j(q) < 0
    break;
  else
    fprintf('No root between given intervals.\n')
  end
end

while(abs(c - q) > t || abs(c - p) > t)
  c = (p+q)/2;
  Ans = [c, Ans];
  if abs(c - q) < t || abs(c - p) < t
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
xlabel('X');
ylabel('Y');
axisLabelFontSize = 12;
set(gca, 'FontSize', axisLabelFontSize);
set(gca, 'xAxisLocation', 'origin');
fprintf('Root is %f\n', c);
disp('Calculated roots in each iteration:');
disp(Ans');

