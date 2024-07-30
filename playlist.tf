resource "spotify_playlist" "Favourites" {
  name        = "Favourites"

  tracks = ["6DwBCjospi1c9WsRVfoCwN"]
}

data "spotify_search_track" "Michael_Jackson" {
    artist = "Michael_Jackson"
}

resource "spotify_playlist" "Popstar" {
    name = "Popstar"
    tracks = [data.spotify_search_track.Michael_Jackson.tracks[1].id,
                data.spotify_search_track.Michael_Jackson.tracks[3].id,
                data.spotify_search_track.Michael_Jackson.tracks[4].id]
}

