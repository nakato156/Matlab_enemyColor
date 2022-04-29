function [a, b] = regresion(x, y)
  n = length(x);
  prom_x = sum(x)/n;
  prom_y = sum(y)/n;

  num = sum(x.*y) - (n*prom_x*prom_y);
  den = sum(x.*x) - (n*(prom_x^2));
  b = num/den;
  a=prom_y-(b*prom_x);
end