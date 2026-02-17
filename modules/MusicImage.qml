import QtQuick
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Io

Item {
    id: rootPlayer
    implicitWidth: 300
    implicitHeight: 300 // Adjusted to fit image + text

    // Accessing the first player safely
    readonly property var player: Mpris.players.length > 0 ? Mpris.players[0] : null

    Image {
        id: art
	anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
	source: rootPlayer.active?.trackArtUrl ?? ""
	asynchronous: true
	onSourceChanged: console.log("Art URL is:", source)
	

        // The background/border rectangle should usually be a child or layered behind
        Rectangle {
            anchors.fill: parent
            color: "transparent"
            border.color: "white"
            border.width: 1
            z: -1
        }
    }

    Text {
        id: title
        anchors.top: art.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: art.horizontalCenter
        text: rootPlayer.player?.trackTitle ?? "No Media"
        color: "white"
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideRight
    }
}
