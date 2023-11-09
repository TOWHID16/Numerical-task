x = input('enter the matrix x= ');
y = input('enter the matrix y= ');
c = columns(x);
r = rows(y);
e = max(x);
fprintf('max value of a matrix= %d\n', e);
if r == c
  result = x*y;
  fprintf('product of x and y: \n');
  disp(result);
else
  fprintf('matrix multiplication is not possible');
  end
