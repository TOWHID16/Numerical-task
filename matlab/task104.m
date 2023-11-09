clc;
pkg load symbolic;
e = input('Enter an equation(in terms of x): ', 's');
j = inline(equation_str, 'x');
syms x;
jj = diff(j(x), x);
l = matlabFunction(jj);
t = input('Enter tolerance: ');
Ans = [];
for i = 1:5
  p = input('Enter first interval: ');
  q = input('Enter second interval: ');
  if j(p)*j(q) < 0
    break;
  else
    fprintf('No root between given intervals.\n')
  end
end
d = (p+q)/2;
while(abs(c-d) >= t)
  d = (p+q)/2;
  j_d = j(d);
  l_d = l(d);
  Ans = [d, Ans];
  c = d - (j_d/l_d);
  endif
  d = c;
end

fprintf('Root is %0.3f\n', d);
disp(Ans);
x = 0:0.1:10;
hold on
plot(x, j(x));
plot(d, j(d), 'xr');
title([e, ' = 0']);
titleFontSize = 16;
set(get(gca, 'title'), 'FontSize', titleFontSize);
axisLabelFontSize = 12;
set(gca, 'FontSize', axisLabelFontSize);
set(gca, 'xAxisLocation', 'origin');
fprintf('Root is %0.3f\n', d);
disp(Ans');
