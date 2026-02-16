// Workspaces.qml
import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

// Where text is replace with object - item 

//Item {
  
//}

RowLayout {
    spacing: 10
    
    Repeater {
        model: Hyprland.workspaces.values
        Text {
            property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
            property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
            
	    text: index + 1 
            color: isActive ? Theme.tertiary : (ws ? Theme.primary : Theme.on_primary)
            font { pixelSize: 14; bold: true }

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + (index + 1))
            }
        }
    }
}
