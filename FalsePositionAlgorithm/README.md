# FalsePositionAlgorithm

## Description of Algorithm
This algorithm is the false position root finding method which uses two initial brackets that bracket the root, one at the function is positive while the other is negative at the function. Then, you use the false position formula to find the next estimate of the root and replace this estimate with whichever bracket has the same sign. This process is repeated in a for loop until either the desired relative error is met or until the maximum number of iterations to perform has been reached. 
### Inputs
* func - the function which is being evaluated
* xl - the lower bracket
* xu - the upper bracket
* es - the desired relative error
* maxiter - the maximum number of iterations to be performed

### Outputs
* root - the calculated root
* fx - the function evaluated at the root
* ea - approximate relative error
* iter - number of iterations performed

### Limitations 
This algorithm can only be used if there are two brackets which contain the root somewhere in between them, and one bracket has to have a positive function value while the other has a negative funciton value. In some situations having a small desired error or large number of iterations can make the running time of the code unreasonable.
### Useful Information
This algorithm is a great way to find a root as only a user error will cause it to malfunction.
