n = 24
interim_x = 16
post0 <- phase1b::postprob(x = 0:n, n = n, parE = c(10 + interim_x, 10 + n - interim_x), p = 0.5) # P(RR > 20% | prior )

post1 <- phase1b::postprob(x = 0:n, n = n, parE = c(20 + interim_x, 20 + n - interim_x), p = 0.5) # P(RR > 20% | prior )

post2 <- phase1b::postprob(x = 0:n, n = n, parE = c(30 + interim_x, 30 + n - interim_x), p = 0.5) # P(RR > 20% | prior )

post3 <- phase1b::postprob(x = 0:n, n = n, parE = c(40 + interim_x, 40 + n - interim_x), p = 0.5) # P(RR > 20% | prior )

# the one which will reach the prob of Go first is the weaker prior 

plotthis = data.frame(x = c(0:n),
                      posterior = c(post0, post1, post2, post3),
                      Priors = c(rep("B(10, 10) or mean = 1/2", times = length(post0)), 
                                 rep("B(20, 20) or mean = 1/2", times = length(post1)), 
                                 rep("B(30, 30) or mean = 1/2", times = length(post2)),
                                 rep("B(40, 40) or mean = 1/2", times = length(post3))))

ggplot(plotthis) +
  geom_point(aes(x = x,
                 y = posterior,
                 col = Priors), size = 1.8) +
  # scale_color_manual(values = c("#56B4E9", "#CC79A7", "#009E73", "blue")) +
  ggtitle("CDF for various posteriors") +
  ylab("Posterior Probability") +
  xlab("Number of responders") +
  scale_x_continuous(breaks = seq(0, n, by = 2)) +
  theme(text = element_text(size = 20)) + 
  theme_gray(base_size = 13) +
  geom_segment(aes(x = 12, xend = 12, y = 0.75, yend = 0:0.30), lty = 3) +
  scale_color_manual(values = c("#56B4E9", "#CC79A7", "#009E73", "blue")) 

<!-- Control arm success rate 1 / 10 patients. How many patients in Treatment arm needed to respond for this two-arm trial to be a "GO" ?  -->
  
  # ```{r}
  # #| fig.align: center
  # ppDist <- phase1b::postprobDist(
  #   x = 1:23,
  #   n = 23,
  #   xS = 1,
  #   nS = 10,
  #   parE = c(0.2, 0.8),
  #   parS = c(0.6, 0.4),
  #   delta = 0.2,
  #   relativeDelta = TRUE,
  #   weights = 1,
  #   weightsS = 1
  # )
  # go = 0.6
  # 
  # data_dist <- data.frame(x = 1:23,
  #            y = ppDist )
  # 
  # data_dist$success <- ifelse(data_dist$y > go, "TRUE", "FALSE")
  # 
  # ggplot(data_dist) +
  #   geom_point(aes(x = x, y = y, col = success), size = 3) +
  #   ggtitle(paste("Posterior probability that Treatment arm exceeds \n Control arm given data and priors")) +
  #   ylab("Posterior Probability") +
  #   xlab("Number of responders") +
  #   scale_x_continuous(breaks = seq(0, n, by = 2)) +
  #   theme(text = element_text(size = 20)) +
  #   scale_color_manual(values = c("#D55E00", "#009E73")) + 
  #   theme_gray(base_size = 13)
  #   
  # ```