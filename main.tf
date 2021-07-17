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
  description = "[WIP] Robots and 80's rarities - playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_track.siouxie.id,
    data.spotify_track.aneka.id,
    data.spotify_track.hot_cold.id,
    data.spotify_track.lio.id,
    data.spotify_track.simple_minds.id,
    data.spotify_track.bbq_band.id,
    data.spotify_track.robyn.id,
    data.spotify_search_track.by_kraftwerk.tracks[0].id,
    data.spotify_search_track.by_royksopp.tracks[0].id,
  ]
}

# Track:  Siouxsie and the Banshees - Israel
data "spotify_track" "siouxie" {
  spotify_id = "6jLmHKaHW6Cy37Gp5eTD3i"
  # url = "https://open.spotify.com/track/6jLmHKaHW6Cy37Gp5eTD3i?si=e6f23e76f11d4711"
}

data "spotify_track" "aneka" {
  url = "https://open.spotify.com/track/4VmmNHz5nigftA0B3GR0M5?si=7b1f156f9e58413a"
}

data "spotify_track" "hot_cold" {
  url = "https://open.spotify.com/track/4JXj2LwjTBmp1mzYORNuAU?si=ccd1daecc3bc4888"
}

# Track: Lio - Amoureux Solitaires
data "spotify_track" "lio" {
  spotify_id = "0ZJgIjGJdYzgb03LSH09Gx"
  # url = "https://open.spotify.com/track/0ZJgIjGJdYzgb03LSH09Gx?si=d383776523cd4760"
}

data "spotify_track" "simple_minds" {
  url = "https://open.spotify.com/track/3GRyWgNPX5rBdh0VQctl5P?si=8ac81a32dfad4a6f"
}

data "spotify_track" "bbq_band" {
  url = "https://open.spotify.com/track/2LhBqodFdzWIGagvryATNW?si=14934deb51244e53"
}

data "spotify_track" "robyn" {
  url = "https://open.spotify.com/track/6n3v8Tmkj1G2sVHkUSq0b8?si=63b6702cf7d3456f"
}

data "spotify_search_track" "by_kraftwerk" {
  artists = ["Kraftwerk"]
  #album   = ""
  name = "The Robots"
}

data "spotify_search_track" "by_royksopp" {
  artists = ["royksopp"]
  #album   = ""
  name = "The Girl and the Robot"
}

output "tracks" {
  value = [
    data.spotify_search_track.by_kraftwerk.tracks,
    data.spotify_search_track.by_royksopp.tracks,
  ]
}
