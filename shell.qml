import Quickshell
import Quickshell.Io
import QtQuick

Variants {
	model: Quickshell.screens

	delegate: Component{
		PanelWindow {
			required property var modelData

			screen: modelData

			anchors {
				top: true
				left: true
				right: true
			}

			margins {
				left: 10
				top: 0
				right: 10
			}

			surfaceFormat {
			    opaque: true
			}

			color: Colors.background

			Rectangle {
			    width: 20
			    height: 20
			    color: Colors.active
			}

			implicitHeight: 35
		}
	}
}
