library(dplyr)

desterieux_3d <- desterieux_3d %>%
  unnest(ggseg_3d) %>%
  mutate(region = gsub("_", " ", region)) %>%
  ggseg3d::as_ggseg3d_atlas()
usethis::use_data(desterieux_3d, internal = FALSE, overwrite = TRUE)


# Make palette
k <- dplyr::slice(desterieux_3d, 1) %>%
  unnest(ggseg_3d) %>%
  select(region, colour) %>%
  filter(!grepl("wall", region))

brain_pals = list(
  desterieux = setNames(k$colour, k$region)
)
usethis::use_data(brain_pals, internal = TRUE, overwrite = TRUE)

