pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#131313"
    readonly property color bgContainer: "#1f1f1f"
    readonly property color bgContainerLow: "#1b1b1b"
    readonly property color bgContainerHigh: "#2a2a2a"
    readonly property color surfaceVariant: "#474747"
    
    // Primary Accent
    readonly property color primary: "#ffffff"
    readonly property color on_primary: "#1b1b1b"
    readonly property color primaryContainer: "#d4d4d4"
    readonly property color on_primaryContainer: "#000000"
    
    // Secondary Accent
    readonly property color secondary: "#c6c6c6"
    readonly property color on_secondary: "#1b1b1b"
    readonly property color secondaryContainer: "#474747"
    readonly property color on_secondaryContainer: "#e2e2e2"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#e2e2e2"
    readonly property color on_tertiary: "#1b1b1b"
    readonly property color tertiaryContainer: "#919191"
    readonly property color on_tertiaryContainer: "#000000"
    
    // Text & Foregrounds
    readonly property color on_surface: "#e2e2e2"
    readonly property color on_surfaceVariant: "#c6c6c6" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ffb4ab"
    readonly property color on_error: "#690005"
    readonly property color outline: "#919191"
    readonly property color outlineVariant: "#474747"
    readonly property color shadow: "#000000"
}
