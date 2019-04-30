# luFactorAlgorithm
## Description of Algorithm
This algorithm is designed to calculate the lower triangular matrix, an upper triangular matrix, and pivot matrix from a coefficient square matrix. The algorithm includes partial pivoting and keeps track of what has been pivoted using the pivot matrix which is basically a rearranged identity matrix. When L and U are multiplied together, they will be equal to A.
### Inputs
* A - coefficient square matrix
### Outputs
* L - lower triangular matrix
* U - upper triangular matrix
* P - pivot matrix
### Limitations
The matrix must be a square matrix. If it is not a square matrix, the matrix can not be decomposed into its lower or upper triangular matrices. 
### Useful Information
The order in which the matrices are displayed are L U and P.
