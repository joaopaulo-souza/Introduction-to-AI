<h1>Main algorithms</h1>


<h2>K-Means Clustering</h2>


K-Means is a popular unsupervised machine learning algorithm used for clustering data into groups, or "clusters". It tries to partition a given dataset into a pre-defined number (K) of clusters based on feature similarity. The goal is to minimize the variance within each cluster and maximize the variance between different clusters.

Steps of the K-Means Algorithm:
1. Initialization:
   - Select the number of clusters K.
   - Randomly initialize K centroids (points in the feature space).
   
2. Assignment Step:
   - Each data point is assigned to the nearest centroid, forming K clusters.
   - The proximity between a data point and a centroid is typically measured using Euclidean distance.

3. Update Step:
   - Once all points are assigned to clusters, the algorithm recalculates the centroids of each cluster by finding the mean of all points in the cluster.

4. Repeat:
   - Steps 2 and 3 are repeated until the centroids stop changing significantly (convergence) or a maximum number of iterations is reached.



Principal Component Analysis (PCA) Algorithm

Principal Component Analysis (PCA) is a popular technique for dimensionality reduction, simplifying datasets with many variables while retaining the most important information.

<h2>Steps in the PCA Algorithm:</h2>

1. Standardize the Data: 
   Since PCA is affected by the scale of the variables, it is important to standardize (normalize) the data so that each feature contributes equally to the analysis. This involves transforming the data to have a mean of 0 and a standard deviation of 1.

   Formula: 
   X_standardized = (X - μ) / σ
   where X is the original data, μ is the mean, and σ is the standard deviation.

2. Calculate the Covariance Matrix: 
   The covariance matrix helps identify relationships between variables. Covariance shows how much two variables vary together. If variables are highly correlated, they can be reduced into fewer principal components.

   Formula: 
   Cov(X, Y) = Σ(X_i - X̄)(Y_i - Ȳ) / (n - 1)

3. Compute Eigenvectors and Eigenvalues: 
   Eigenvectors determine the direction of the new feature space (principal components), while eigenvalues determine the magnitude (variance) along each eigenvector. These are calculated from the covariance matrix. The eigenvectors form the basis for the new feature space, and the eigenvalues represent the amount of variance captured by each eigenvector.

4. Sort Eigenvalues and Select Principal Components: 
   Eigenvalues are sorted in descending order. The eigenvector with the highest eigenvalue corresponds to the first principal component (capturing the most variance). You can then select the top k principal components based on the desired level of explained variance.

5. Project Data onto New Feature Space: 
   The original data is transformed by projecting it onto the new feature space defined by the selected principal components. This reduces the dimensionality of the data, allowing for visualization or more efficient processing.

   Formula: 
   Y = X * W
   where X is the standardized data matrix, W is the matrix of selected eigenvectors (principal components), and Y is the projected data in the new space.


<h2>Gaussian Mixture Models (GMM) - Key Points</h2>
Definition: GMM is a probabilistic model that represents a dataset as a mixture of multiple Gaussian distributions, each corresponding to a cluster.

Gaussian Distribution: Each cluster is assumed to follow a normal distribution, characterized by its mean (center) and covariance (spread/shape).

Soft Clustering: GMM assigns probabilities to data points for belonging to each cluster, unlike hard clustering methods that assign points to one cluster only.

Mixing Coefficients: Each Gaussian distribution has a mixing coefficient representing the proportion of data points that belong to that cluster.

Expectation-Maximization (EM): GMM uses the EM algorithm to iteratively refine the parameters (means, covariances, and mixing coefficients) by:

E-step: Calculate probabilities of each data point belonging to each cluster.
M-step: Update the parameters to maximize the likelihood of the observed data.
Cluster Shape: GMM allows clusters to take any elliptical shape, unlike methods like k-means, which only allow spherical clusters.

Applications: Used in image segmentation, anomaly detection, and speech recognition, where clusters may have complex shapes and overlapping boundaries.
