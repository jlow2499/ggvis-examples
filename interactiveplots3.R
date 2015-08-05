# Map the bindwidth to a numeric field ("Choose a binwidth:")
mtcars %>% 
  ggvis(~mpg) %>% 
  layer_histograms(width = input_numeric(label = "Choose a binwidth:", value = 1))

# Map the binwidth to a slider bar ("Choose a binwidth:")
mtcars %>% 
  ggvis(~mpg) %>% 
  layer_histograms(width = input_slider(label = "Choose a binwidth:", min = 1, max = 20))
