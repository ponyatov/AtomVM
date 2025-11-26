# fitness function

A [[fitness function]] based on this reward/punishment system allows the evolutionary process to rank the NNs to see which ones are better than others, based on 
- adding fitness points to the simulated robot when it does what we want it to do, and 
- penalizes the robot when it does something we don’t want it to do.

A fitness function based on this reward/punishment system allows the evolutionary process to rank the NNs to see which ones are better than others, and do some mutation to a network to get it more and more affordable.

For simplest simulated robot:
> Fitness = A*(# of minutes active) + B*(% of environment cleaned) - C*(# of furniture bumps)

- A, B, and C are weight variables set by the researcher, and depend on which of these qualities the researcher finds most important.
- the simulated world has knowledge of where all the things within it are located, 
- it can keep track of furniture collisions through [[Collision detection]]

