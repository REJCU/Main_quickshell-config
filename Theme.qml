pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#131314"
    readonly property color bgContainer: "#1f2021"
    readonly property color bgContainerLow: "#1b1c1c"
    readonly property color bgContainerHigh: "#292a2b"
    readonly property color surfaceVariant: "#464748"
    
    // Primary Accent
    readonly property color primary: "#bcc8d3"
    readonly property color on_primary: "#26323a"
    readonly property color primaryContainer: "#3d4851"
    readonly property color on_primaryContainer: "#d8e4ef"
    
    // Secondary Accent
    readonly property color secondary: "#c1c7ce"
    readonly property color on_secondary: "#2b3136"
    readonly property color secondaryContainer: "#41484d"
    readonly property color on_secondaryContainer: "#dde3ea"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#b6c9d8"
    readonly property color on_tertiary: "#21323e"
    readonly property color tertiaryContainer: "#374955"
    readonly property color on_tertiaryContainer: "#d2e5f5"
    
    // Text & Foregrounds
    readonly property color on_surface: "#e4e2e3"
    readonly property color on_surfaceVariant: "#c7c6c7" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ffb4ab"
    readonly property color on_error: "#690005"
    readonly property color outline: "#919091"
    readonly property color outlineVariant: "#464748"
    readonly property color shadow: "#000000"
}
