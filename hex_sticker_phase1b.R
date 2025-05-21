# install.package("remotes")   #In case you have not installed it.
#remotes::install_github("GuangchuangYu/hexSticker")
library(hexSticker)
control = 0.6
thetaT_low = 0.6
result <- predprob(
  x = 16, n = 23, Nmax = 40, p = control, thetaT = thetaT_low,
  parE = c(0.6, 0.4)
)

thetaT_high = 0.9
result_high_thetaT <- predprob(
  x = 16, n = 23, Nmax = 40, p = control, thetaT = thetaT_high,
  parE = c(0.6, 0.4)
)
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

sticker(q, package="phase1b", p_size = 7, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#FFD95F",
        h_fill = "#4635B1", p_color = "#FFD95F",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="2024_talks_in_quarto/images/hex3.svg")

sticker(q, package="phase1b", p_size = 7, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#F6DC43",
        h_fill = "#301E67", p_color = "#F6DC43",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="2024_talks_in_quarto/images/hex3.svg")

# the closes
sticker(q, package="phase1b", p_size = 7, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#F6DC43",
        h_fill = "#3D2C8D", p_color = "#F6DC43",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="2024_talks_in_quarto/images/hex3.svg")
# this one

sticker(q, package="phase1b", p_size = 7, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#DDCC77",
        h_size = 1,
        h_fill = "#332288",
        p_color = "#DDCC77",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="test.svg")


# finc
# the closes
sticker(q, package="finc", p_size = 7, s_x = 1, s_y= 0.85, s_width = 1, s_height = 0.7,
        h_color = "#F6DC43",
        h_fill = "#3D2C8D", p_color = "#F6DC43",
        # spotlight = TRUE, l_x = 1, l_y = 0.75,
        filename="media/finctest.svg")