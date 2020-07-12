library(tidyverse)
library(googlesheets4)
options(gargle_oauth_email = "benastenhaug@gmail.com")
library(lubridate)

theme_set(cowplot::theme_minimal_hgrid())

sheet <- gs4_get("1wDsgKkhisM-wW9mX-imuFBQoQEnbhomBuNaN41EgJzA")

data <- 
    sheet %>% 
    read_sheet() %>% 
    select(time = 1, learning = 2, project = 3, enjoying = 4) %>% 
    mutate(time = timestamps_to_weeks(time))

data2 <- 
    data %>% 
    group_by(time) %>% 
    summarize(
        n = n(),
        Learning = median(learning),
        `Project Status` = median(project),
        Enjoying = median(enjoying),
        .groups = "drop_last"
    )

data2 %>% 
    select(-n) %>% 
    gather(var, Score, -time) %>% 
    ggplot(aes(x = time, y = Score)) +
    geom_point(size = 3) +
    geom_line(alpha = 0.25, linetype = "dashed") +
    facet_wrap(~ var, ncol = 1) +
    scale_y_continuous(limits = c(0, 5)) +
    scale_x_continuous(breaks = 1:2) +
    labs(x = "Week", y = "Median score", title = "DSSG Quantitative Feedback")
