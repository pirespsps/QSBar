import Quickshell
import Quickshell.Io
import QtQuick

ShellRoot {
    Variants {

	model: Quickshell.screens

	Item {
	    id: root
	    required property var modelData

	    PanelWindow {
		id: barra

		screen: root.modelData

		anchors {
		    top: true
		    left: true
		    right: true
		}

		margins {
		    top: 10
		    left: 10
		    right: 10
		    bottom: 10
		}

		surfaceFormat {
		    opaque: false
		}

		color: "transparent"

		Rectangle {
		    radius: 10
		    width: parent.width
		    height: parent.height
		    color: Colors.background

		    Rectangle {
			radius: 5
			width: parent.height / 1.5
			height: parent.height / 1.5
			color: Colors.active
			x: 5
			y: parent.height * 0.15
		    }
		}

		implicitHeight: 30
	    }
	}
    }
}
