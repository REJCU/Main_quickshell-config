// modules/MusicPlayer.qml
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Mpris
import ".."

Item {
    id: root
    // CRITICAL: This link tells the Bar how wide the player is
    implicitWidth: playerRow.implicitWidth 
    implicitHeight: 30

    RowLayout {
        id: playerRow
        anchors.fill: parent
        spacing: 10

        Repeater {
            model: Mpris.players
            delegate: RowLayout {
                spacing: 8
                // Ensures the layout only gives space if a player is active
                visible: modelData.trackTitle !== undefined 

                Text {
                    text: modelData.trackTitle || "No Media"
                    color: Theme.primary
                    font.pixelSize: 12
                    Layout.maximumWidth: 150
                    elide: Text.ElideRight
                }

                RowLayout {
                    spacing: 12
                    Text { text: "󰒮"; color: Theme.primary; MouseArea { anchors.fill: parent; onClicked: modelData.previous() }}
                    Text { text: modelData.isPlaying ? "" : ""; color: Theme.primary; MouseArea { anchors.fill: parent; onClicked: modelData.togglePlaying() }}
                    Text { text: "󰒭"; color: Theme.primary; MouseArea { anchors.fill: parent; onClicked: modelData.next() }}
                }
            }
        }
    }
}
