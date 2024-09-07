<h1> Genetic Algorithms </h1>

Genetic Algorithms (GAs) are a class of optimization algorithms inspired by the principles of natural selection and genetics. They are used to find approximate solutions to optimization and search problems, particularly when the search space is large and complex.

In Genetic Algorithms (GAs), the three primary genetic operators—selection, crossover, and mutation—play crucial roles in evolving a population of solutions toward better outcomes. Here’s an explanation of each operator:

<h2> Selection </h2>
Purpose: Selection is used to choose which individuals (chromosomes) from the current population will be used to create the next generation. The goal is to prefer better solutions (those with higher fitness) while still allowing some diversity.

Common Methods:

Roulette Wheel Selection (Fitness Proportionate Selection): Each individual is given a probability of being selected proportional to its fitness score. Imagine a roulette wheel where the size of each section corresponds to an individual’s fitness; the wheel is spun, and the selected individual is the one that the wheel lands on.

Tournament Selection: A subset of individuals is randomly chosen from the population, and the one with the best fitness within this subset is selected. This method is easy to implement and helps maintain diversity.

Rank Selection: Individuals are ranked based on fitness, and selection is based on this ranking rather than absolute fitness values. This prevents problems where a few highly fit individuals dominate the selection process.

Example: In a population of 100 individuals, if one individual has significantly higher fitness than others, it is more likely to be selected. However, if tournament selection is used, only a subset of individuals is compared, and the best among them is chosen, which can help maintain diversity.

<h2>Crossover (Recombination)</h2>
Purpose: Crossover combines parts of two parent chromosomes to produce offspring. This mimics biological reproduction and helps in exploring new regions of the solution space by combining features from both parents.

Common Methods:

One-Point Crossover: A single crossover point is selected randomly along the chromosome. The segments of the chromosomes before and after this point are swapped between the two parents to create two offspring.

Two-Point Crossover: Two crossover points are selected randomly. The segments between these two points are exchanged between the parents to produce offspring. This method ensures more mixing of genetic material.

Uniform Crossover: Each gene is swapped between parents with a certain probability. This means each gene has a fixed chance of coming from either parent, regardless of its position.

Example: If Parent 1 has the chromosome 101010 and Parent 2 has 010101, using one-point crossover at position 3 might produce offspring like 101101 and 010010.


<h2> Mutation </h2>
Purpose: Mutation introduces small random changes to an individual’s chromosome to maintain genetic diversity and explore new areas of the search space. It helps prevent the algorithm from getting stuck in local optima by occasionally introducing novel variations.

Common Methods:

Bit Flip Mutation: For binary chromosomes, a bit is flipped from 0 to 1 or from 1 to 0 with a certain probability (mutation rate).

Swap Mutation: For permutations or order-based chromosomes, two genes are swapped randomly.

Gaussian Mutation: For continuous or real-valued chromosomes, a gene value is altered by adding a small random value drawn from a Gaussian distribution.
