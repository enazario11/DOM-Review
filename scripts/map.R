#load libraries
library(tidyverse)
library(here)
library(tidyquant)
library(mapdata)
library(ggpubr)

#world map
state <- map_data("state")

#get US map
EC <- ggplot(data=state, aes(x=long, y=lat, group = group)) + 
  geom_polygon(color = "black", fill = "grey75") + 
  theme_tq()+
  coord_fixed(xlim = c(-80, -66), ylim = c(32, 50), expand = TRUE)+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        #axis.text = element_text(size = 14, color = "black"), 
        #axis.title = element_text(size= 16, color = "black"), 
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA), 
        axis.text = element_blank(), 
        axis.title = element_blank(), 
        panel.border = element_rect(color = "grey60"))


WC <- ggplot(data=state, aes(x=long, y=lat, group = group)) + 
  geom_polygon(color = "black", fill = "grey75") + 
  theme_tq()+
  coord_fixed(xlim = c(-126, -113), ylim = c(32, 49), expand = TRUE)+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        #axis.text = element_text(size = 14, color = "black"), 
        #axis.title = element_text(size= 16, color = "black"), 
        panel.background = element_rect(fill='transparent'),
        plot.background = element_rect(fill='transparent', color=NA), 
        axis.text = element_blank(), 
        axis.title = element_blank(), 
        panel.border = element_rect(color = "grey60"))

ggarrange(WC, EC)
ggsave(here("figures/maps.png"), width = 8, height = 6, units = c("in"))
