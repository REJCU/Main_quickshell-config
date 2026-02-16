pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#0b141b"
    readonly property color bgContainer: "#182127"
    readonly property color bgContainerLow: "#141d23"
    readonly property color bgContainerHigh: "#222b32"
    readonly property color surfaceVariant: "#374955"
    
    // Primary Accent
    readonly property color primary: "#51dbce"
    readonly property color on_primary: "#003733"
    readonly property color primaryContainer: "#00504a"
    readonly property color on_primaryContainer: "#72f7ea"
    
    // Secondary Accent
    readonly property color secondary: "#81d5cb"
    readonly property color on_secondary: "#003733"
    readonly property color secondaryContainer: "#00504a"
    readonly property color on_secondaryContainer: "#9df2e7"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#92cef6"
    readonly property color on_tertiary: "#00344c"
    readonly property color tertiaryContainer: "#004c6c"
    readonly property color on_tertiaryContainer: "#c7e7ff"
    
    // Text & Foregrounds
    readonly property color on_surface: "#dae4ec"
    readonly property color on_surfaceVariant: "#b6c9d8" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ffb4ab"
    readonly property color on_error: "#690005"
    readonly property color outline: "#8193a1"
    readonly property color outlineVariant: "#374955"
    readonly property color shadow: "#000000"
}
