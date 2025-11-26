# Example 1: Automated currency trader

Unlike the stock market, [[Forex]] (FX) market deals with trading currencies and is up ~ 24/7. FX market had a turnover of roughly $4 trillion in 2011, and a huge trading volume leading to its high liquidity. It is thus reasonable to think that with a flexible enough system and a well chosen training set, we could teach a NN to buy and sell currencies automatically.

To evolve a NN based currency trader we first need to decide on how and what to present to the NN’s sensors. The most direct approach would be to implement a type of [[sliding window]] protocol with regards to the traded currency’s [[historical data]]

- In this approach we feed the NN the historical data from X number of [[money/tick]]s until the current time $T$
- and ask it to make a decision of whether to buy, hold, or sell this currency at time $T+1$

> In this scenario our [[scape]] will be a simulated FX market using real [[historical data]]

the fitness of the NN, which in this case can be the actual profit after those 1000 ticks. We can set up the fitness function to be as follows:

> Fitness = 300 + P

Where 300 is the amount of money the NN initially started with, and P is a positive or negative number that represents the amount of profit generated during 1000 ticks.

Again we would use evolution to evolve a population of this type of currency traders, choosing those that were more profitable

we would test it on new currency data to make sure that the trading NN can generalize and be used on currency data in a real it has not yet seen

Finally we would then modify its sensors and actuators to interface with the real [[money/FX]] trading software instead of a simulated one
