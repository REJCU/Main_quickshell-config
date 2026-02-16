import QtQuick
import QtQuick.Controls
import Quickshell.Services.SystemTray

Repeater {
    model: SystemTray.items
    
    delegate: Button {
        id: trayButton
        width: 32
        height: 32
        flat: true

        // modelData is automatically available in the delegate
        contentItem: Image {
            source: modelData.icon || "fallback-icon-name"
            fillMode: Image.PreserveAspectFit
        }

        ToolTip.visible: hovered
        ToolTip.text: modelData.title

        // Use the Button's own clicked signal instead of a nested MouseArea
        onClicked: (pointer) => {
		console.log("Icon", modelData.title);
            if (pointer.button === Qt.RightButton) {
                modelData.contextMenu(pointer.x, pointer.y);
            } else {
                modelData.activate();
            }
        }
    }
}
