devtools::load_all("../../ggsegExtra/")
devtools::load_all(".")
library(dplyr)

desterieux_3d_2 <- make_aparc_2_3datlas(annot = "aparc.a2009s",
                                        output_dir = "data-raw")

desterieux_3d_2 <- desterieux_3d_2 %>%
  mutate(atlas = "desterieux_3d")

# Make palette ----
brain_pals <- make_palette_ggseg(desterieux_3d)

usethis::use_data(brain_pals, internal = TRUE, overwrite = TRUE)
devtools::load_all(".")

# make atlas ----
# desterieux_3d <- desterieux_3d %>%
#   unnest(ggseg_3d) %>%
#   mutate(region = gsub("_", " ", region)) %>%
#   ggseg3d::as_ggseg3d_atlas()

# desterieux_3d <- restruct_old_3datlas(desterieux_3d)
# desterieux_3d <- as_ggseg3d_atlas(desterieux_3d)


desterieux <- ggsegExtra::make_ggseg3d_2_ggseg(desterieux_3d,
                                           steps = 4:7,
                                           smoothness = 8,
                                           tolerance = .8,
                                           output_dir = here::here("data-raw"))

ggseg(atlas=desterieux, show.legend = FALSE,
      colour = "black", position="stacked",
      alpha=.6,
      mapping = aes(fill=region)) +
  scale_fill_brain("desterieux", package = "ggsegDesterieux")

plot(desterieux)

usethis::use_data(desterieux,
                  internal = FALSE,
                  overwrite = TRUE,
                  compress="xz")



