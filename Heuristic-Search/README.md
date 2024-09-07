
<h2> Heuristic Search </h2>
In computer science and artificial intelligence, heuristic search refers to a search algorithm that uses heuristics to make decisions about which paths to explore in a problem space. A heuristic is essentially a rule or method that helps in making a decision or solving a problem more efficiently than an exhaustive search.

-Heuristic Function: A heuristic function estimates the cost or value of a particular state or path in a search problem. It helps guide the search algorithm by providing a way to prioritize which paths to explore.

-Purpose: The main goal of heuristic search is to find solutions more efficiently than methods that explore all possible paths (like brute-force search). Heuristics aim to reduce the search space and focus on more promising paths.

<h2> Greedy Search </h2>
Greedy search is a search algorithm that makes locally optimal choices at each step with the hope of finding a global optimum. It’s designed to find a solution quickly by always selecting the option that seems best at the moment, without considering the broader context of the problem.

How It Works
-Local Choice: At each step of the algorithm, the greedy search chooses the option that looks the most promising based on a heuristic. This choice is made without regard to the consequences of that choice on future steps.

-Heuristic Function: The heuristic function in greedy search provides a measure of how "good" a state is. The search uses this heuristic to evaluate and prioritize which nodes (or states) to explore next.

Objective: The goal is to reach a solution or a goal state quickly by making the best decision at each step based on the heuristic.

Greedy search is a method or strategy that employs heuristics but is not itself a heuristic. Instead, it uses heuristics to inform its decisions and guide the search process.

<h2>Simulated Aneealing</h2>
Simulated Annealing (SA) is a probabilistic optimization algorithm inspired by the annealing process in metallurgy. It’s used to find approximate solutions to optimization and search problems, especially when dealing with complex, multi-modal spaces where other methods might struggle.

Key Concepts
Inspiration: The algorithm is inspired by the annealing process, where metals or glass are slowly cooled to remove defects and achieve a stable structure. In optimization, the process metaphorically involves "cooling" the system to converge on an optimal solution.

Objective: Simulated Annealing aims to find a good approximation of the global optimum in a large search space, particularly when the search space is rugged with many local optima.

How It Works
Initial Solution: Start with an initial solution and an initial temperature.

Neighbor Solutions: Generate a new solution (neighbor) by making a small random change to the current solution.

Acceptance Probability: Determine whether to move to the new solution based on its quality and a probability that depends on the current temperature:

If the new solution is better, it is always accepted.
If the new solution is worse, it may still be accepted with a certain probability. This probability decreases as the temperature decreases.
Cooling Schedule: Gradually reduce the temperature according to a cooling schedule (e.g., exponentially or linearly). As the temperature decreases, the algorithm becomes less likely to accept worse solutions.

Termination: The algorithm terminates after a set number of iterations or when the temperature is sufficiently low.

Key Parameters
Initial Temperature: Determines how likely worse solutions are to be accepted initially. A higher temperature allows the algorithm to explore a larger portion of the search space.

Cooling Rate: The rate at which the temperature decreases. A slower cooling rate allows more thorough exploration but requires more time.

Acceptance Probability Function: Typically, the acceptance probability is calculated using a formula like:
P = exp(-ΔE/T), where E is the change in cost or energy between the current and new solution, and T is the current temperature.
