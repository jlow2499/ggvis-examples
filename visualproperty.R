# Add a scale that limits the range of opacity from 0.2 to 1.
mtcars %>% ggvis(x = ~wt, y = ~mpg, fill = ~factor(cyl), opacity = ~hp) %>%
  layer_points() %>%
  scale_numeric("opacity", range = c(0.2, 1))

# Add a second scale that will expand the x axis to cover data values from 0 to 6.
mtcars %>% ggvis(~wt, ~mpg, fill = ~disp) %>%
  layer_points() %>%
  scale_numeric("y", domain = c(0, NA)) %>%
  scale_numeric("x", domain = c(0, 6))
