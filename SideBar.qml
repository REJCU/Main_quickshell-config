import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Scope {
  Variants {
    model: Quickshell.screens 

    PanelWindow {
      id: sidebar
      required property var modelData
      screen: modelData


      property bool isHovered: false
      
      implicitWidth: isHovered ? 450 : 10
      implicitHeight: isHovered ? 450 : 120

      color: "transparent" 
      
      WlrLayershell.layer: WlrLayer.Top
      WlrLayershell.namespace: "sidebar"
      WlrLayershell.exclusiveZone: 0
      
      // Makes it jittery and moves window off of side 
      //Behavior on implicitWidth {
        //  NumberAnimation {
          //  duration: 800
            // easing.type: Easing.OutBack
          //}
         //}

      // Behavior on implicitHeight {
        // NumberAnimation {
          ///duration: 800 
          //easing.type: Easing.OutBack
        //}
      // }

      anchors {
        right: true
        top: true
        bottom: true
      }

      margins {
        top: 30
        bottom: 30
      }

      Rectangle {
        id: sidebarcontainer
        anchors.fill: parent
        color: Theme.bg
        radius: 15
        clip: true
        anchors.rightMargin: -25

        border.color: Qt.rgba(1, 1, 1, 0.1)
        border.width: 1

        MouseArea {
          anchors.fill: parent
          hoverEnabled: true
          onEntered: sidebar.isHovered = true 
          onExited:  sidebar.isHovered = false

          // propogateComposedEvents: true
        }
        Rectangle {
            anchors.fill: parent
            color: Theme.bg
            radius: 12
            border.color: Theme.outlineVariant
            border.width: 1

            // CONTENT LAYOUT
            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 16
                spacing: 12

                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: "Control Center"
                    color: Theme.tertiary
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 14
                }

                // Put this for all the media, volume and other

                // Vertical Spacer: This pushes "Hello!" to the center
                Item { Layout.fillHeight: true }

                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: "Hello!"
                    color: Theme.tertiary
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 20
                }

                ClockWidget {
                  Layout.alignment: Qt.AlignHCenter
                }

                // Another Spacer
                Item { Layout.fillHeight: true }
                
                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: "Hello world!"
                    color: Theme.tertiary
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 12
                }


        }
      }



      }
    
    }
    
  }
}
