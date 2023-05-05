// Train a single strategy, save it, then evaluate it.

/* formula 1 */
strategy PreShielded = minE (aov/100) [<=120] {p} -> {t, v}: <> elapsed >= 120

/* formula 2 */
saveStrategy("/home/asger/Results/fig-OPShieldingResultsGroup/Query Results/PreShielded.strategy.json", PreShielded)

/* formula 3 */
E[<=120;1000] (max:aov/100) under PreShielded

/* formula 4 */
E[<=120;1000] (max:(number_deaths > 0)) under PreShielded

/* formula 5 */
E[<=120;1000] (max:interventions) under PreShielded
