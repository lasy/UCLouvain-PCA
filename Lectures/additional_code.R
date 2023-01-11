
N <- 200
D <- 
  tibble(x = rnorm(N)) %>% 
  expand_grid(c = c(1, -1, 0)) %>% 
  mutate(y = c * x + rnorm(3*N)) %>% 
  arrange(c, x)

ggplot(D, aes(x = x, y = y)) +
  geom_point() + 
  facet_grid(. ~ c) +
  coord_fixed()

p <- 10
D_multi <- 
  matrix(rnorm(N * p), N, p) %>% 
  magrittr::set_colnames(letters[1:p]) %>% 
  as_tibble()