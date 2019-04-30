function [I] = Simpson(x,y)
% Created By: Madi Flodquist
% April 15, 2019
% The purpose of this function is to automatically use the Simpson's 1/3
% rule with data which has equal spacing.
%    Inputs
%       x - spacing
%       y - the value of the function at each spacing interval
%    Output
%       I - the integral/summation found using the Simpson's 1/3 rule
%   The function is designed to evaluate the integral of the vector
%   function with values y with respect to x

if nargin < 2
    error('There must be two inputs.')
end
if nargin > 2
    error('There must be two inputs.')
end
if length(x) ~= length(y)
    % ensures the inputs are the same length
    error('The x and y inputs must be the same length.')
end
n = length(x);
xint = (x(1,2)-x(1,1));
y_0 = y(1,1);
y_f = y(1,n);
for i = 2:n
    % start at beginning of x array, then go down each and find the
    % spacing, if the inverval found does not equal the old interval found
    % then make an error and break the loop
    xintold = xint;
    xint = (x(1,i)-x(1,i-1));
    if xint ~= xintold
        error('The spacing is uneven, simpson 1/3 rule can not be used.')
    end
end
% determine whether the array is even or odd and react accordingly
if rem(length(x),2) == 0 
    %array length is even
    Ieven = ((xint)/(3))*(y_0 + y_f + 2*sum(y(1,3:2:n-2)) + 4*sum(y(1,2:2:n)));
    I = Ieven;
    % sum function causes all of the y values which go with either 2 or 4
    % to be added together to create the composite simpson's 1/3 rule to
    % work properly
    
elseif rem(length(x),2) == 1
    %array length is odd
    warning('The arrays have odd numbers and the last space will be calculated with trapezoidal method')

    t = (y_f - y(1,n-1))/2; % trapezoidal rule to be used on the last value if array length is odd
    Iodd = ((xint)/(3))*(y_0 + y(1,n-1) + 2*sum(y(1,3:2:n-2)) + 4*sum(y(1,2:2:n-1)) + t);
    I = Iodd;
   
end

end

