terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "hbokh's Terraform Playlist"
  description = "Robot related tracks, mixed with 80's rarities // This playlist is managed by Terraform."
  public      = true

  tracks = [
    data.spotify_track.siouxie.id,
    data.spotify_track.aneka.id,
    data.spotify_track.hot_cold.id,
    data.spotify_track.lio.id,
    data.spotify_track.simple_minds.id,
    data.spotify_track.bbq_band.id,
    data.spotify_track.robyn.id,
    data.spotify_track.bananarama.id,
    data.spotify_search_track.by_kraftwerk.tracks[0].id,
    data.spotify_search_track.by_royksopp.tracks[0].id,
    data.spotify_search_track.by_styx.tracks[0].id,
  ]
}

# Track:  Siouxsie and the Banshees - Israel (1980)
data "spotify_track" "siouxie" {
  spotify_id = "6jLmHKaHW6Cy37Gp5eTD3i"
  # url = "https://open.spotify.com/track/6jLmHKaHW6Cy37Gp5eTD3i?si=e6f23e76f11d4711"
}

# Track: Aneka - Japanese Boy (1981)
data "spotify_track" "aneka" {
  url = "https://open.spotify.com/track/4VmmNHz5nigftA0B3GR0M5?si=7b1f156f9e58413a"
}

# Track: Hot Cold - Love is like a Game (1985)
data "spotify_track" "hot_cold" {
  url = "https://open.spotify.com/track/4JXj2LwjTBmp1mzYORNuAU?si=ccd1daecc3bc4888"
}

# Track: Lio - Amoureux Solitaires (1980)
data "spotify_track" "lio" {
  spotify_id = "0ZJgIjGJdYzgb03LSH09Gx"
  # url = "https://open.spotify.com/track/0ZJgIjGJdYzgb03LSH09Gx?si=d383776523cd4760"
}

# Track: Simple Minds - I Travel (1980)
data "spotify_track" "simple_minds" {
  url = "https://open.spotify.com/track/3GRyWgNPX5rBdh0VQctl5P?si=8ac81a32dfad4a6f"
}

# Track: B.B. & Q. Band - Starlette (1981)
data "spotify_track" "bbq_band" {
  url = "https://open.spotify.com/track/2LhBqodFdzWIGagvryATNW?si=14934deb51244e53"
}

# Track: Robyn - Robotboy (2005)
data "spotify_track" "robyn" {
  url = "https://open.spotify.com/track/6n3v8Tmkj1G2sVHkUSq0b8?si=63b6702cf7d3456f"
}

# Track: Bananarama - Rough Justice (1984)
data "spotify_track" "bananarama" {
  url = "https://open.spotify.com/track/4dW0Xy4pIeY5jqskF3BKif?si=98865176029b4a56"
}

data "spotify_search_track" "by_kraftwerk" {
  artists = ["Kraftwerk"]
  #album   = ""
  name = "The Robots"
}

data "spotify_search_track" "by_royksopp" {
  artists = ["Royksopp"]
  #album   = ""
  name = "The Girl and the Robot"
}

data "spotify_search_track" "by_styx" {
  artists = ["Styx"]
  #album   = ""
  name = "Mr. Roboto"
}

output "tracks" {
  value = [
    data.spotify_search_track.by_kraftwerk.tracks,
    data.spotify_search_track.by_royksopp.tracks,
    data.spotify_search_track.by_styx.tracks,
  ]
}
