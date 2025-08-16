import Quickshell
import Quickshell.Io
import Quickshell.I3
import QtQuick

ShellRoot {
    Time {
	id: horario
    }

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
				required property int index

				radius: 5
				width: barra.height / 1.5
				height: barra.height / 1.5
				color: Colors.active
				x: this.width * index + 9 * index + barra.height / 2
				y: barra.height * 0.15

				Text {
				    anchors.centerIn: parent
				    color: Colors.foreground
				    text: modelData.name
				}
			    }
			}
		    }

		    Rectangle {
			x: barra.width - this.width - barra.height / 2
			y: barra.height / 2 - this.height / 2

			radius: 5
			width: 100
			height: barra.height / 1.25
			color: Colors.active

			Text {
			    anchors.centerIn: parent
			    text: horario.time
			    color: Colors.foreground
			    font.pixelSize: 18
			}
		    }
		}

		implicitHeight: 30
	    }
	}
    }
}
