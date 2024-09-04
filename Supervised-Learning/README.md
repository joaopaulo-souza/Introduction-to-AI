<h1>Main Supervised Algorithms</h1>

----------------------------------------
      NAIVE BAYES CLASSIFIER ALGORITHM
----------------------------------------

The foundation of the Naive Bayes classifier is Bayes' Theorem, which can be mathematically expressed as:

P(C_k | X) = [P(X | C_k) * P(C_k)] / P(X)

Where:
- **P(C_k | X)**: Posterior probability of class C_k given the feature vector X.
- **P(X | C_k)**: Likelihood of the feature vector X given class C_k.
- **P(C_k)**: Prior probability of class C_k.
- **P(X)**: Evidence or the total probability of the feature vector X across all classes.


Given a dataset with **n** features, X = {x₁, x₂, ..., xₙ}, and a target variable with **m** classes, C = {C₁, C₂, ..., Cₘ}, the Naive Bayes algorithm operates as follows:

1. **Calculate the Prior Probability for Each Class:**

   P(C_k) = (Number of instances in C_k) / (Total number of instances)

2. **Calculate the Likelihood for Each Feature Given Each Class:**

   - **For Continuous Features (Gaussian Naive Bayes):**
     
     Assume that the features follow a Gaussian (normal) distribution.

     P(x_i | C_k) = (1 / √(2πσ_k²)) * exp[-(x_i - μ_k)² / (2σ_k²)]

     Where:
     - μ_k: Mean of feature x_i in class C_k.
     - σ_k: Standard deviation of feature x_i in class C_k.

   - **For Categorical Features:**
     
     P(x_i | C_k) = (Number of instances where x_i and C_k co-occur) / (Total number of instances in C_k)

3. **Calculate the Posterior Probability for Each Class:**

   Using the assumption of feature independence:

   P(C_k | X) ∝ P(C_k) * Π (from i=1 to n) P(x_i | C_k)

   This means you multiply the prior probability by the product of the likelihoods of each feature.

4. **Make the Prediction:**

   Assign the class label C_k that has the highest posterior probability.

   Ĉ = argmax₍C_k₎ P(C_k | X)