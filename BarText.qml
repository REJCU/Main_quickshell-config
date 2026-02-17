import Quickshell
import Quickshell.Io
import Quickshell.Widgets
import QtQuick
import QtQuick.Layouts
import QtQuick.Effects // This provides MultiEffect

Item {
  id: root
  // We wrap the Text in an Item so the MultiEffect has a 
  // coordinate space to render the shadow offsets.
  implicitWidth: mainText.implicitWidth + 2
  implicitHeight: mainText.implicitHeight + 2

  property string mainFont: "JetBrainsMonoNF-Regular"
  property string symbolFont: "Symbols Nerd Font Mono"
  property int pointSize: 11
  property int symbolSize: pointSize * 1.37
  property string symbolText
  property bool dim
  
  Text {
    id: mainText
    text: wrapSymbols(symbolText)
    anchors.centerIn: parent
    color: dim ? "#CCCCCC" : "white"
    textFormat: Text.RichText
    font {
      family: mainFont
      pointSize: pointSize
    }
    // We hide the source text because MultiEffect will render it for us
    visible: true 
  }

  MultiEffect {
	  // if want text effects enable
    //source: mainText
    anchors.fill: mainText
    
    // Shadow properties
    shadowEnabled: true
    blurEnabled: true
    shadowColor: "black"
    shadowHorizontalOffset: 1
    shadowVerticalOffset: 1
    shadowOpacity: 1.0
    shadowBlur: 0.0 // Set to > 0 if you want a softer glow/shadow
  }

  function wrapSymbols(text) {
    if (!text) return ""

    const isSymbol = (codePoint) =>
        (codePoint >= 0xE000   && codePoint <= 0xF8FF) 
     || (codePoint >= 0xF0000  && codePoint <= 0xFFFFF) 
     || (codePoint >= 0x100000 && codePoint <= 0x10FFFF);

    return text.replace(/./gu, (c) => isSymbol(c.codePointAt(0))
      ? `<span style='font-family: ${symbolFont}; letter-spacing: -5px; font-size: ${symbolSize}px'>${c}</span>`
      : c);
  }
}
