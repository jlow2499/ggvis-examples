# add the title of the x axis: "Time since previous eruption (m)"
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>% 
  add_axis("y", title = "Duration of eruption (m)") %>%
  add_axis("x", title = "Time since previous eruption (m)")

# Add to the code to place a labelled tick mark at 50, 60, 70, 80, 90 on the x axis.
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>% 
  add_axis("y", title = "Duration of eruption (m)", 
          values = c(2, 3, 4, 5), subdivide = 9) %>% 
  add_axis("x", title = "Time since previous eruption (m)",
            values = c(50,60,70,80,90))

# Change the code below to change the axes' locations
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>%
  add_axis("y",orient="right") %>%
  add_axis("x",orient="top")
