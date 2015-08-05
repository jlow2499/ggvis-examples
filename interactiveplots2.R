# Change the radiobuttons widget to a text widget 
mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill := input_text(label = "Choose color:", 
                           value = "black")) %>% 
  layer_points()

# Map the fill property to a select box that returns variable names
mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill = input_select(label = "Choose fill variable:", 
                            choices = names(mtcars), map = as.name)) %>% 
  layer_points()

