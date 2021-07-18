# Spotify Playlist with Terraform

Create a playlist using various data sources, like `spotify_track` and `spotify_search_track`.

The playlist starts with a Terraform track, holds some robot 🤖 related tracks and is accompanied by 80's rarity tracks.

Spotify playlist URL: <https://open.spotify.com/playlist/0oRjEbePbpHsguBg00TdET>

## Set the API key

Remember to set / replace the `spotify_api_key` in file `terraform.tfvars` **every time** the Spotify authorization proxy server aka Docker container `conradludgate/spotify-auth-proxy` is started!!

## Reference

 HashiCorp Learn - [Create a Spotify Playlist with Terraform](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist).
