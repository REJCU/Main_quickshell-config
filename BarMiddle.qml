import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "./modules" as Modules

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: rootWindow
            required property var modelData
            screen: modelData
            
            color: "transparent" 

            WlrLayershell.layer: WlrLayer.Top
            WlrLayershell.namespace: "bar"
            WlrLayershell.exclusiveZone: height

            // 1. Remove left/right anchors so it doesn't stretch to screen edges
            anchors {
                top: true
            }

            // 2. Window width follows the background rectangle
            width: statusBar.width + margins.left + margins.right
            height: 38

            margins {
                top: 0
                left: 10
                right: 10
            }

            Rectangle {
                id: statusBar
                // 3. This is the key: width is determined by the Layout's implicit size
                width: mainLayout.implicitWidth + 40 // 40 = total horizontal padding
                height: 38
                anchors.horizontalCenter: parent.horizontalCenter
                
                color: Theme.bg 
                radius: 15 
                border.width: 0 

                // Top Flattener
                Rectangle {
                    anchors {
                        left: parent.left
                        right: parent.right
                        top: parent.top
                    }
                    height: parent.radius
                    color: parent.color
                    z: 1
                }

                RowLayout {
                    id: mainLayout
                    // 4. Center the layout and let it breathe
                    anchors.centerIn: parent
                    spacing: 10 // Space between modules
                    z: 2 
                    
                    Text {
                        text: "" 
                        color: Theme.primary
                        font.pixelSize: 18
                        font.family: "JetBrainsMono Nerd Font"
                        
                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: ControlPanel.active = !ControlPanel.active
                        } 
                    }
                    
                    Workspaces {
                        // Ensure this component has an implicitWidth defined internally!
                        Layout.alignment: Qt.AlignVCenter
                    }

                    // 5. The Center Pill as a layout item
                    Rectangle {
                        id: centerPill
                        implicitWidth: topIconsRef.implicitWidth + 24
                        implicitHeight: 30
                        radius: 12
                        color: Theme.bg
                        // change to see borders and other
                        Layout.alignment: Qt.AlignVCenter

                        //DockIcons {
                         //   id: topIconsRef
                         //   anchors.centerIn: parent
			 //}
			// add music player 
			//Text { text: "add Music player"; color: Theme.primary; anchors.centerIn: parent}

                        //Item { Layout.fillWidth: true}
                        // Need to make a dropdown menu for it 
                        // Modules.SystemTray {}
                      }

                    Text {
                        // Using a fixed string or ensuring Systemstats returns valid data
			text: `CPU: ${Systemstats.cpuUsage}% | RAM: ${Systemstats.memUsage}% | ${Systemstats.isCharging ? "󱐋 " : "󰁹 "}${Systemstats.batteryLevel}% |` 
                        font.pixelSize: 14
                        font.family: "JetBrainsMono Nerd Font" 
                        Layout.alignment: Qt.AlignVCenter
			color: Theme.primary
                    }

                    ClockWidget {
                        Layout.alignment: Qt.AlignVCenter
                        color: Theme.primary
                    }
                    // could add something to back to change color
                    Text {
                      text: ""
                      Layout.alignment: Qt.AlignVCenter
                      color: Theme.primary
                      // add dropdown for calender
                    }

                }
                
                // Optional: Smooth width transitions
                Behavior on width {
                  // to change animation type
                    NumberAnimation { duration: 50; easing.type: Easing.OutExpo }
                }
            }
        }
    }
}
