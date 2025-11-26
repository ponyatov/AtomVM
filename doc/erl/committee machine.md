# committee machine

A [[committee machine]] is simply a group of trained agents, where the final action is based on this committee as opposed to being based on any single agent. 

Some of the champions (high fitness) NNs **will have very different internal structure from other champions**, we could form groups of these high fitness NNs, ask them all the same question (input signal), then weigh their votes (output signal), and base the final suggestion of the committee on the weighted average of these votes.

## homogeneous committee

We could form the committee from champion NNs which were evolved on all historical information indiscriminately, and then simply ask the group of these champion NNs the same question and weigh their votes. This type of committee is called a [[#homogeneous committee]].

## filtered or specialized committee

Or we could create 7 different populations, and then evolve each of the 7 populations on a different training set.

We would do this because the market’s behavior has patterns, and those patterns are specific to certain months and certain hours of day due to the market’s dependency on seasons.

These patterns might require different trading strategies, and each NN population would concentrate on that particular trading strategy.

After each of these populations has evolved a set of high fitness NNs, we would extract the champions from them and put them into groups within the committee.

The committee would then filter the input signals, **routing the signals** to the cluster of NN champions which specializes in that particular data set specific to current week day etc
