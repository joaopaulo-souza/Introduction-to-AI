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

   P(C_k | X) = P(C_k) * Π (from i=1 to n) P(x_i | C_k)

   This means you multiply the prior probability by the product of the likelihoods of each feature.

4. **Make the Prediction:**

   Assign the class label C_k that has the highest posterior probability.

   Ĉ = argmax₍C_k₎ P(C_k | X)

----------------------------------------
        SUPPORT VECTOR MACHINE (SVM)
----------------------------------------

Support Vector Machine (SVM) is a powerful supervised machine learning algorithm used primarily for classification tasks, although it can also be used for regression. The main goal of the SVM algorithm is to find the optimal hyperplane that best separates the data into different classes.


        SVM ALGORITHM CONCEPTS


1. **Hyperplane:**
   - In n-dimensional space, a hyperplane is a flat affine subspace of dimension (n-1). For example, in 2D space, the hyperplane is a line, and in 3D space, it is a plane.
   - The hyperplane is chosen such that it maximizes the margin between the two classes.

2. **Margin:**
   - The margin is the distance between the hyperplane and the nearest data points from each class. These nearest points are known as support vectors.
   - SVM aims to maximize this margin to ensure that the model can generalize well to unseen data.

3. **Support Vectors:**
   - Support vectors are the data points that are closest to the hyperplane and influence its position and orientation.
   - Only the support vectors are needed to define the hyperplane; the other data points are irrelevant.

4. **Linear vs. Non-Linear SVM:**
   - **Linear SVM:** Used when the data is linearly separable, meaning a straight line (in 2D) or a flat plane (in 3D) can separate the classes.
   - **Non-Linear SVM:** Used when the data is not linearly separable. SVM uses the kernel trick to transform the data into a higher-dimensional space where it becomes linearly separable.

5. **Kernel Trick:**
   - The kernel trick is a mathematical function that transforms the original input space into a higher-dimensional space, making it possible to find a hyperplane that separates the data.
   - Commonly used kernels include:
     - **Linear Kernel:** Suitable for linearly separable data.
     - **Polynomial Kernel:** Maps the data into a higher-degree polynomial space.
     - **Radial Basis Function (RBF) Kernel:** Also known as the Gaussian kernel, it maps data into an infinite-dimensional space and is effective for non-linear data.
     - **Sigmoid Kernel:** Mimics the behavior of neural networks.


        SVM ALGORITHM STEPS


1. **Data Preparation:**
   - Collect and preprocess the data. This includes handling missing values, encoding categorical variables, and normalizing/standardizing the data.

2. **Choose the Kernel Function:**
   - Select an appropriate kernel function based on whether the data is linearly separable or not. For linearly separable data, use a linear kernel; for non-linear data, consider using RBF, polynomial, or sigmoid kernels.

3. **Train the SVM Model:**
   - Use the training data to fit the SVM model. The algorithm will find the optimal hyperplane that separates the classes by maximizing the margin.

4. **Predict:**
   - Use the trained model to make predictions on new, unseen data by determining which side of the hyperplane the data points fall on.

5. **Evaluate the Model:**
   - Assess the performance of the SVM model using metrics such as accuracy, precision, recall, and F1 score. Cross-validation can be used to ensure the model generalizes well to unseen data.
