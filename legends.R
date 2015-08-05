# Add a legend to the plot below: use the correct title and orientation
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions))) %>% 
  layer_points() %>% 
  add_legend("fill", title = "~ duration (m)", orient = "left")

# Use add_legend() to combine the legends in the plot below. Adjust its properties as instructed.
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
        size = ~round(eruptions)) %>% 
    layer_points() %>% 
    add_legend(c("fill", "shape", "size"), 
               title = "~ duration (m)", values = c(2, 3, 4, 5))
