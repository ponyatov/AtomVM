# Example 2: Financial oracle

Another option is to create a [[money/financial oracle]], which instead of trading directly, simply predicts whether price of the currency will go up or down during the next tick, or during the next $T$ amount of time.

instead of the NN’s fitness being based directly on how much profit it makes, it would be based on the rate of correct predictions.

The evolved NN based intelligent agent would print its predictions to screen in mix of real [[money/FX|FX]] data, which we would then take into consideration and execute the trade ourselves.
