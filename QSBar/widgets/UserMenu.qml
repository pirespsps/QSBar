import QtQuick
import Quickshell
import "../"

PopupWindow {
    property var anc

    //anchor.window: anc
    anchor.rect.x: parent.width / 2 - width / 2
    anchor.rect.y: parent.height
    width: 500
    height: 500
    visible: true
    color: Colors.background
}