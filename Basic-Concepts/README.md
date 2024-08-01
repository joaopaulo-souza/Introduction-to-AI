<img src="https://github.com/joaopaulo-souza/Introduction-to-AI/blob/master/Images/egg-robot.jpeg" width="900">

<h1>Basic Concepts of AI</h1>

<h2>Fields of Knowledge</h2>

<h3>Data Science</h3>
Data science is an interdisciplinary field focused on analyzing, interpreting, and modeling structured and unstructured data. It integrates techniques from statistics, mathematics, computer science, to extract meaningful insights and useful knowledge from data.

<h3>Artificial Intelligence</h3>
Artificial intelligence is an interdisciplinary field dedicated to building models and algorithms that perform tasks requiring human-like intelligence. These tasks include learning, reasoning, problem-solving, perception, and natural language understanding. AI and data science often overlap and intersect, as both fields aim to derive value from data and build intelligent systems.

<h3>Machine Learning</h3>
Machine learning is a subfield of artificial intelligence and data science. It focuses on developing models that learn from and make predictions or decisions based on training data. Machine learning algorithms enable systems to improve their performance over time without being explicitly programmed for specific tasks.

<h3>Deep Learning</h3>
Deep learning is a subfield of machine learning that aims to build models using various types of neural networks. These neural networks are designed to automatically learn and represent complex patterns in data, enabling advanced tasks such as image recognition, natural language processing, and more. Deep learning has been instrumental in achieving breakthroughs in AI by leveraging large datasets and computational power.

<h2>Types of Learning</h2>

<h3>Supervised Learning</h3>
In supervised learning, the model is trained on a labeled dataset, meaning each training example is paired with an output label. The goal is for the model to learn a mapping from inputs to outputs so it can predict the output for new, unseen inputs.Example: Training a model to classify emails as spam or not spam based on a labeled dataset of emails. Algorithms: Linear regression, logistic regression, support vector machines, neural networks.

<h3>Unsupervised Learning</h3>
In unsupervised learning, the model is trained on an unlabeled dataset, meaning there are no predefined labels or outputs. The goal is for the model to find hidden patterns or intrinsic structures in the input data. Example: Grouping customers into different segments based on purchasing behavior without predefined categories. Algorithms: K-means clustering, hierarchical clustering, principal component analysis (PCA), t-SNE.

<h3>Semi-Supervised Learning</h3>
Semi-supervised learning is a middle ground between supervised and unsupervised learning. It uses a small amount of labeled data along with a large amount of unlabeled data. The goal is to improve the learning accuracy by leveraging the unlabeled data, which can provide additional context and structure. Example: Training a text classifier with a few labeled documents and many unlabeled documents to improve classification accuracy. Algorithms: Semi-supervised support vector machines, co-training, graph-based methods.

<h3>Reinforcement Learning</h3>
Reinforcement learning (RL) is a type of machine learning where an agent learns to make decisions by interacting with an environment. The agent takes actions to maximize cumulative rewards over time. Unlike supervised and unsupervised learning, reinforcement learning involves learning from the consequences of actions rather than from a fixed dataset.

<h2>Types of Errors</h2>

<h3>Bias</h3>
It's a characteristic of a simple model in face of the complexity of a real world problem. For instance: approximating a non-linear problem by a linear one, introduces an error. This error is the bias.   
High Bias: Leads to underfitting, where the model is too simple to capture the underlying patterns in the data.

<h3>Variance</h3>
A characteristic of a more complex model: It's the error introduced by the model's sensitivity to small fluctuations in the training set.
High Variance: Leads to overfitting, where the model captures noise in the training data instead of the actual patterns. The problem is that the model perform very poorly in test data. 


<h3>Trade-off</h3>
Bias-Variance Trade-off: The balance between bias and variance to achieve optimal model performance. Reducing one typically increases the other.


<h3>Overfitting</h3>
When a model learns the details and noise in the training data to the extent that it negatively impacts the model's performance on new data.
Indicators: High accuracy on training data but poor accuracy on validation/test data.


<h3>Underfitting</h3>
When a model is too simple to capture the underlying structure of the data.
Indicators: Poor accuracy on both training and validation/test data.