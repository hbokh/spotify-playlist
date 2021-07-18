# Spotify Playlist with Terraform

Create a playlist using various data sources, like `spotify_track` and `spotify_search_track`.

The playlist consists some robot 🤖 related tracks, accompanied by eighties rarity tracks.

Spotify playlist: <https://open.spotify.com/playlist/0oRjEbePbpHsguBg00TdET>

## Set the API key

Remember to set / replace the `spotify_api_key` in file `terraform.tfvars` **every time** the Spotify authorization proxy server aka Docker container `conradludgate/spotify-auth-proxy` is started!!

## Reference

 HashiCorp Learn - [Create a Spotify Playlist with Terraform](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist).
