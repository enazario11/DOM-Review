#library
library(plotly)

#sunburst plot 
d <- data.frame(
  ids = c(
    "Species", "Social", "Data", "Associations", "Dynamic range", "Natural history", "Habitat separations", "Limited prey",
    "Fine scale management", "Coop management", "Incentivized", "Implementation", "Existing management",
    "Resources","Species data", "Technology", "Environmental data", "Open access", "Scale",
    "Social data"
  ),
  labels = c(
    "Species", "Social", "Data", "Associations", "Dynamic<br>range", "Natural<br>history", "Habitat<br>separations", "Limited<br>prey",
    "Fine<br>scale<br>management", "Coop<br>management", "Incentivized", "Implementation", "Existing<br>management",
    "Resources","Species<br>data", "Technology", "Environmental<br>data", "Open<br>access", "Scale",
    "Social<br>data"
  ),
  parents = c(
    "", "", "", "Species","Species","Species","Species","Species","Species","Social","Social","Social","Social","Social","Data","Data","Data","Data","Data","Data"
  ),
  colors = c("dodgerblue4", "cadetblue4", "rosybrown4", "dodgerblue1", "dodgerblue1", "dodgerblue1", "dodgerblue1", "dodgerblue1", "dodgerblue1", "cadetblue2","cadetblue2", "cadetblue2", "cadetblue2","cadetblue2","rosybrown2","rosybrown2","rosybrown2","rosybrown2","rosybrown2","rosybrown2"),
  stringsAsFactors = FALSE
)

fig <- plot_ly(d, ids = ~ids, labels = ~labels, parents = ~parents, type = 'sunburst', insidetextorientation='radial') %>% layout(colorway = ~colors)

fig
