here::i_am("code/models.R"
           #! TO DO: add appropriate location
)

data <- readRDS(
  file = 
    here::here("data/sportsref_download.xls"))

library(gtsummary)

mod <- glm(
  pts ~ age,
  data = data
)

primary_regression_table <- 
  tbl_regression(mod) |>
  add_global_p()

summary(model)
saveRDS(
  regression_tables,
  file = 
    here::here("output/regression_tables.rds"))