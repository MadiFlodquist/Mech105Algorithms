# SimpsonAlgorithm

## Description of Algorithm
This algorithm performs the Simpson's 1/3 rule for tabulated data. It does not work for functions, only for data. If there is an odd number of values in the array rather than even, the last value is added using the trapezoidal rule since it can't be calculated in the Simpson's 1/3 rule. The value which comes out of this algorithm is the summation of the Simpson's 1/3 rule and can be used as an approximation of an integral for data which has been collected.
### Inputs
* x - the spacing of the data in an array
* y - the values of the data at each spacing interval in an array
### Outputs
* I - the integral or summation of the data using the Simpson's 1/3 rule
### Limitations
This function can only be used if the spacing between the data points is equal, otherwise the function will not run and an alternate function must be used. The estimate for an array which has a length which is an odd number might also be less accurate than an estimate for an array whose length is even because the trapezoidal rule must be used to calculate the last value. x and y must be the same length for the function to run, otherwise an error will occur.
### Useful Information
To use this function, spacing must be even. The estimate will most likely be more accurate if the length of the arrays is even. The arrays x and y must be the same length, otherwise the function will not run.
