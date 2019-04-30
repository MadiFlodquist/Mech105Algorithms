function [L, U, P] = luFactor(A)
%Created by Madi Flodquist March 29, 2019
% The purpose of this function is to find the LU factorization of a square
% matrix. This function also uses partial pivoting
%   Inputs
%     A - coefficient square matrix
%   Outputs
%     L - lower triangular matrix
%     U - upper triangular matrix
%     P - pivot matrix

% checking to make sure the A matrix is square
[m,n] = size(A);
if m ~= n
    error('The A matrix must be a square matrix.')
end

%n can be used to say how many rows/columns there are

% create identity matrix the same size as A
L = eye(n);

P = L; %the initial pivot matrix and the start of the lower triangular matrix are both the identity matrix here
U = A; %the initial upper triangular matrix is equal to the A matrix before doing any calculations




%using nested for loops to pivot and find U and L

for j = 1:n-1
    pivot = max(abs(U(j:m,j)));
for g = j:m
    if (abs(U(g,j))== pivot)% finding the right max value to switch rows
        e = g;
        break;
    end
end
L([j,e],1:j-1) = L([e,j],1:j-1); %finding L with the pivot
U([j,e], j:m) = U([e,j],j:m); %finding U with the pivot
P([j,e],:) = P([e,j],:); %keeping track of which rows have been switched and where they went with identity matrix
for i = j+1:m
    val = U(i,j)/U(j,j); %value which is L and finds U
    L(i,j) = val;
    U(i,j:m) = U(i,j:m) - val*U(j,j:m); %altered version of U after using val
end
end
disp(L)
disp(U)
disp(P)
end

