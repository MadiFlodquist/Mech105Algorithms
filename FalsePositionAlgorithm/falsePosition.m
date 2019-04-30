function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxiter)

% Outputs
% root = the root calculated
% fx = the function evaluated at the root
% ea = the approximate relative error of the root
% iter = number of iterations performed to get the root

% Inputs
% func = the function being evaluated
% xl = the lower bracket of the function
% xu = the upper bracket of the function
% es = the desired relative error
% maxiter = the maximum number of iterations to perform

format long

if nargin < 3 
    error('Three inputs are required.')
end

%es = input('What is the desired relative error? (in percent)');
%maxiter = input('What is the maximum number of iterations wanted?');

if isempty(es) % setting a default for the accuracy of the estimate
    es = 0.0001;
end
if isempty(maxiter) % setting a default for the number of iterations
    maxiter = 200;
end

% func = input('What function are you evaluating? Use x for variable.');


% xl = input('What is the lower bracket?');
x_lower = isnumeric(xl);
if x_lower == 0
    error('Lower bracket has to be a number.') % Makes sure input is a number
end


%xu = input('What is the upper bracket?');
x_upper = isnumeric(xu);
if x_upper == 0
    error('Upper bracket has to be a number.') % Makes sure input is a number
end

% Bracket Testing
bracket_test = func(xl)*func(xu);
if bracket_test > 0
    error('The brackets must have different signs.')
end


iter = 0;
ea = 0;

while (1)
    iter = iter + 1;
    xr = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu));
    fx = func(xr);
    ea = ((func(xu)-fx)/(func(xu)))*100;
    test_root = func(xl)*fx;
    if  test_root < 0
        xl = xr;
    elseif test_root > 0
        xu = xr;
    else
        ea = 1;
    end
    if ea <= es | iter >= maxiter,break,end
end
root = xr;
fprintf('The root of the function is %f.\n', root)
fprintf('The function evaluated at the root is %f.\n', fx)
fprintf('The relative approximate error is %f.\n', ea)
fprintf('The total number of iterations which occured was %f.\n', iter)