pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#131314"
    readonly property color bgContainer: "#1f2021"
    readonly property color bgContainerLow: "#1b1b1d"
    readonly property color bgContainerHigh: "#2a2a2b"
    readonly property color surfaceVariant: "#474748"
    
    // Primary Accent
    readonly property color primary: "#bec7d5"
    readonly property color on_primary: "#28313b"
    readonly property color primaryContainer: "#3f4852"
    readonly property color on_primaryContainer: "#dae3f1"
    
    // Secondary Accent
    readonly property color secondary: "#c2c7cf"
    readonly property color on_secondary: "#2c3137"
    readonly property color secondaryContainer: "#42474e"
    readonly property color on_secondaryContainer: "#dee3eb"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#bac8db"
    readonly property color on_tertiary: "#243240"
    readonly property color tertiaryContainer: "#3b4857"
    readonly property color on_tertiaryContainer: "#d6e4f7"
    
    // Text & Foregrounds
    readonly property color on_surface: "#e4e2e3"
    readonly property color on_surfaceVariant: "#c8c6c7" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ffb4ab"
    readonly property color on_error: "#690005"
    readonly property color outline: "#919091"
    readonly property color outlineVariant: "#474748"
    readonly property color shadow: "#000000"
}
