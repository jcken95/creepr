#' Choose a random, creepy noise
#'
#' Used when the user does not specify a creepy noise
#'
#' @param noises Vector of noise names
choose_noise <- function(noises) {
  chosen_noise <- sample(noises,  1)
  path <- file.path("extdata", "sounds", paste0(chosen_noise, ".wav")) 
  system.file(
    path,
    package = "creepr")
}
