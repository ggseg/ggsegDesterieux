# ggseg ----
context("test-adapt_scales")
test_that("Check that ggseg:::adapt_scales is working", {
  expect_equal(mode(ggseg:::adapt_scales(unnest(desterieux, ggseg))), "list")
})

context("test-palettes")
test_that("check new palettes work", {
  expect_equal(length(brain_pal("desterieux", package = "ggsegDesterieux")), 74)

  expect_error(brain_pal("desterieux"), "not a valid")

  expect_true(all(names(brain_pal("desterieux", package = "ggsegDesterieux")) %in% desterieux$region))
})

context("test-ggseg-atlas")
test_that("atlases are true ggseg atlases", {

  expect_true(is_ggseg_atlas(desterieux))

})

context("test-ggseg")
test_that("Check that polygon atlases are working", {
  expect_is(ggseg(atlas = desterieux),c("gg","ggplot"))

  expect_is(ggseg(atlas = desterieux, mapping = aes(fill = region)),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = desterieux, mapping = aes(fill = region)) +
              scale_fill_brain("desterieux", package = "ggsegDesterieux"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = desterieux, mapping = aes(fill = region)) +
              scale_fill_brain("desterieux", package = "ggsegDesterieux"),
            c("gg","ggplot"))


  expect_is(ggseg(atlas = desterieux, mapping=aes(fill=area), adapt_scales = F ),c("gg","ggplot"))

})


# ggseg3d ----
context("test-ggseg3d")
test_that("Check that mesh atlases are working", {
  expect_is(
    ggseg3d(atlas=desterieux_3d),
    c("plotly", "htmlwidget")
  )
})



context("test-ggseg3d-atlas")
test_that("atlases are true ggseg3d atlases", {

  expect_true(is_ggseg3d_atlas(desterieux_3d))

})
