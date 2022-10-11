#' Play a creepy noise
#'
#' This function plays a creepy noise
#' @import beepr
#' @param noise The chosen noise to play. Must be one of
#'  <insert list of noises>
#'  If no noise is chosen, a random noise is played.
#' @export
creepr = function(noise) {
  if(missing(noise)) {
    noise = choose_noise()
    beepr:::play_file(noise)
  } else {
    sound_path = system.file(
      paste0("extdata/sounds/", noise, ".wav"),
      package = "creepr")

    beepr:::play_file(sound_path)
  }

}

