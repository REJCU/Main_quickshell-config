import Quickshell
import Quickshell.Services.SystemTray
import QtQuick
import QtQuick.Controls

// Use a Repeater to iterate over items 
Row{
  id: trayRow
  spacing: 4

  //implicitWidth: trayRow.width
  //implicitHeight: 32

  Repeater {
    model: SystemTray.items
    // decides icons look
    delegate: Button {
      id: trayButton
      width: 32
      height: 32
      flat: true

      contentItem: Image {
        source: modelData.icon || "fallback-icon-name"
        fillMode: Image.PreserveAspectFit
      }
      ToolTip.visible: hovered
      ToolTip.text: modelData.title

      // Handle clicks: Show the native menu at the mouse position
      onClicked: {
        if (modelData.menu) {
          modelData.menu.show(trayButton);
        }
      }
    }
  }
}
