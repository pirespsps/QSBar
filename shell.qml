import Quickshell
import Quickshell.Io
import Quickshell.I3
import QtQuick

ShellRoot {
    Variants {

	model: Quickshell.screens

	Item {
	    id: root
	    required property var modelData

	    PanelWindow {
		id: barra_wind

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
		    id: barra

		    radius: 10
		    width: parent.width
		    height: parent.height
		    color: Colors.background

		    Repeater {
			model: I3.workspaces

			delegate: Component {
			    Rectangle {

				required property var modelData

				radius: 5
				width: barra.height / 1.5
				height: barra.height / 1.5
				color: Colors.active
				x: barra.height / 2 * modelData.name
				y: barra.height * 0.15

				Text {
				    anchors.centerIn: parent
				    color: Colors.foreground
				    text: modelData.name
				}
			    }
			}
		    }
		}

		implicitHeight: 30
	    }
	}
    }
}
