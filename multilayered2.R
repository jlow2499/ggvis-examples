# Create a graph containing a scatterplot, a linear model and a smooth line. 
pressure %>% 
  ggvis(~temperature, ~pressure) %>%
  layer_lines(opacity := 0.5) %>%
  layer_points() %>%
  layer_model_predictions(model = "lm", stroke := "navy") %>%
  layer_smooths(stroke := "skyblue")
