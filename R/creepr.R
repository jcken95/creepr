#' Play a creepy noise
#'
#' This function plays a creepy noise
#' @import beepr
#' @param noise The chosen noise to play. Must be one of
#'  "creature", "eerie", "intense", "laugh"
#'  "piano", "piano2", "ringing" or "strings"
#'  If no noise is chosen, a random noise is played.
#' @export
creepr <- function(noise) {
  all_noises <- c("creature", "eerie", "intense", "laugh",
                  "piano", "piano2", "ringing", "strings")
  if (missing(noise)) {
    noise <- choose_noise(all_noises)
    beepr:::play_file(noise)
  } else if (!(noise %in% all_noises)) {
    noise <- choose_noise(all_noises)
    beepr:::play_file(noise)
    message("That's not an allowed noise.")
  } else {
    path <- file.path("extdata", "sounds", paste0(noise, ".wav"))
    sound_path <- system.file(path, package = "creepr")
    beepr:::play_file(sound_path)
  }
}
