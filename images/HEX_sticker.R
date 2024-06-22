# Creating the HEX sticker at PSI 2024

library(hexSticker)
library(lattice)
library(ggplot2)
library(tidyverse)
library(grDevices)
library(rcartocolor)


control = 0.6
thetaT_low = 0.6
result <- predprob(
  x = 16, n = 23, Nmax = 40, p = control, thetaT = thetaT_low,
  parE = c(0.6, 0.4)
)
result$result
thetaT_high = 0.9
result_high_thetaT <- predprob(
  x = 16, n = 23, Nmax = 40, p = control, thetaT = thetaT_high,
  parE = c(0.6, 0.4)
)
result_high_thetaT$result
data = rbind(result$table, result_high_thetaT$table)
data$thetaT = c(rep("60%", 18), rep("90%", 18))
df_thetaTlow <- data %>% filter(thetaT == "60%")
df_thetaThigh <- data %>% filter(thetaT == "90%")


ggplot(df_thetaTlow) +
  geom_point(aes(x = cumul_counts, y = posterior, colour = success), size = 1) +
  scale_x_discrete(limits = c(seq(23, 40, by = 1))) +
  theme(text = element_text(size = 20)) +
  scale_color_manual(values = c("#DF536B", "#61D04F")) +
  theme_classic() +
  theme(axis.title = element_blank()) +
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank()) +
  theme_transparent() + theme_void() +
  theme(legend.position = "none") -> q


sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#CD0BBC",
        h_fill = "#332288",
        p_color = "#CD0BBC",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex1.png")

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#E69F00",
        h_fill = "#332288", p_color = "#CD0BBC",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex2.png") #https://stackoverflow.com/questions/57153428/r-plot-color-combinations-that-are-colorblind-accessible

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#DDCC77",
        h_size = 1,
        h_fill = "#332288",
        p_color = "#DDCC77",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex3.png")

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#E69F00",
        h_size = 1,
        h_fill = "#009E73",
        p_color = "#E69F00",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex4.png")

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#F0E442",
        h_size = 1,
        h_fill = "#E69F00",
        p_color = "#F0E442",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex5.png")

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#F0E442",
        h_size = 1,
        h_fill = "#44AA99",
        p_color = "#F0E442",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex6.png")

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#D55E00",
        h_size = 1,
        h_fill = "#CC79A7",
        p_color = "#F0E442",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex7.png")

sticker(q, package="phase1b", p_size = 20, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#F0E442",
        h_size = 1,
        h_fill = "#CC79A7",
        p_color = "#F0E442",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="../../../Desktop/hex8.png")
