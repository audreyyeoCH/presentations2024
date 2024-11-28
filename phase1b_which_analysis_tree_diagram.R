# Install package from CRAN:
install.packages("collapsibleTree")
library(collapsibleTree)
# Alternately, install the latest development version from GitHub:
# install.packages("devtools")
devtools::install_github("AdeelK93/collapsibleTree")

# hierarchical table

IF = rep(c("Efficacy", "Futility"), 3)

which_analysis <- data.frame(which_analysis = c(rep("Interim and Final", 6), 
                                                rep("Interim only", 24)) ,
           type = c(rep("Posterior", 6), 
                    rep("Predictive Posterior", 24)),
           estimate_SOC = c(rep("No SOC estimation", 2), rep("Estimate SOC", 4), 
                            rep("No SOC estimation", 8), rep("Estimate SOC", 8)),
           phase1b_call = c(rep("postprob()", 2), rep("postprobDist()", 4), 
                            rep("predprob()", 16), rep("predprobDist()", 32)),
           abs_case = c("Efficacy Rule", "Futility Rule", 
                        rep("", 8), 
                        rep("Relative Delta", 2),
                        rep("Absolute Delta", 8),
                        rep("Relative Delta", 8),
                        rep("Absolute Delta", 16),
                        rep("Relative Delta", 16)),
        decision_cat = c("Pr(RR > p1) > tU", 
                         "Pr(RR < p0) > tL", 
                         "Efficacy Rule", 
                         "Futility Rule", 
                         "Efficacy Rule", 
                         "Futility Rule",
                         rep(c("Decision 1", "Decision 1", "Decision 2", "Decision 2"), 12)), 
           type_cat = c("", 
                        "", 
                        "Pr(truep > P_S + deltaE | data)",
                        "Pr(truep > P_S + deltaF | data)",
                        "Pr(truep > P_S + (1 - P_S) * deltaE | data)",
                        "Pr(truep > P_S + (1 - P_S) * deltaF | data)",
                        rep(c("Efficacy Rule", "Futility Rule"), 24)),
        interim = c(rep(NA, 6),
                    rep(c("Interim", "interim", "Interim", "Interim", "Final", "Final", "Final", "Final"), 6)))
        # rule = c(rep(NA, 6),
        #          "P(successful trial at final) > phiU",
        #          "P(successful trial at final) < phiL",
        #          "P ( success at final) > phiU",
        #          "P (failure at final ) > phiFu",
        #          "P( response rate > p0 | data) > tT",
        #          "P( response rate > p0 | data ) < tT",
        #          "P( response rate > p0) > tT",
        #          "P( response rate  < p1) > tF",
        #          rep("delete", 8),
        #          ))
        
collapsibleTree(
  which_analysis ,
  hierarchy = c("which_analysis", "estimate_SOC", "phase1b_call", "abs_case", "decision_cat", "type_cat", "interim"),
  width = 800,
  zoomable = TRUE
)

