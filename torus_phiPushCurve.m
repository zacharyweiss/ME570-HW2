%function [xPoints]=torus_phiPushCurve(aCurve,bCurve)
%This function evaluates the curve $x(t)= _torus  @  @everymath \@emptytoks  @ $
%@  ( to\@ne @size  .$ @ vec17E (t)  @  @everymath \@emptytoks  @ $ @  ) to\@ne
%@size  .$ @   R^3$ at  NPoints=31 points generated along the curve $vec17E (t)$
%using line_linspace with $ tMin=0$ and $ tMax=1$, and $a$, $b$ as given in the
%input arguments.
function [xPoints]=torus_phiPushCurve(a,b)
    xPoints = torus_phi(line_linspace(a,b,0,1,31));
end