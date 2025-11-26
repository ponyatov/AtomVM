# Example 2: Evolving aerial dogfighting abilities 

In other scanario we want an [[UCAV]] and evolve a neural system will able to engage other fighter jets in combat.

first we create a detailed simulation of the UCAV and the simulation environment/scape. Then we develop a fitness function through which we can guide evolution in the right direction:

> Fitness = A(Amount of damage inflicted) – B(Amount of damage sustained) + C(Efficiency)

we can populate the simulated skies with preprogrammed simulated fighter jets against which the UCAV will fight and evolve, or, we can use [[coevolution]]

![[coevolution]]

