import QtQuick
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Io
import ".."

Item {
  id: root
  

  readonly property var player: (Mpris.players && Mpris.players.length > 0) ? Mpris.players[0] : null

Image {
  id: image

  anchors.centerIn: parent
  //async: true
  width: 200
  height: 200
  source: Mpris.players[0]?.trackArtUrl ?? "" // or whatever end uses for mpris players
}

Text {
  id: title

  anchors.top: image.bottom
  anchors.topMargin: 50
  text: Mpris.players[0]?.trackTitle ?? ""

  // + formatting, e.g. font, color
}

Text {
  anchors.top: title.bottom
  text: Mpris.players[0]?.trackArtist ?? ""
  color: "white"

  // + formatting
  }
}
