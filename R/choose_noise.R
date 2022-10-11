#' Choose a random, creepy noise
#'
#' Used when the user does not specify a creepy noise
#'
choose_noise = function() {
  noises = c("creature", "eerie", "intense", "laugh",
             "piano", "piano2", "ringing", "strings")
  chosen_noise = sample(noises,  1)
  sound_path = system.file(
    paste0("extdata/sounds/", chosen_noise, ".wav"),
    package = "creepr")
}
