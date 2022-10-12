#' Choose a random, creepy noise
#'
#' Used when the user does not specify a creepy noise
#'
choose_noise <- function(noises) {
  chosen_noise <- sample(noises,  1)
  system.file(
    paste0("extdata/sounds/", chosen_noise, ".wav"),
    package = "creepr")
}
