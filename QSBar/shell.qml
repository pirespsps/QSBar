import Quickshell
import Quickshell.Io
import QtQuick

ShellRoot {

    Time {
	id: horario
    }

	SystemClock {
 	id: clock
  	precision: SystemClock.Hour
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
		    bottom: true
		    left: true
		    right: true
		}

		margins {
		    top: 0
		    left: 1
		    right: 1 
		    bottom: 0
		}

		surfaceFormat {
		    opaque: false
		}

		color: "transparent"

		Rectangle {
		    id: barra

		    
		    width: parent.width
		    height: parent.height 
		    color: Colors.background 

		    Rectangle {
			x: barra.width - this.width * 2.45
			y: barra.height / 2 - this.height / 2 

			radius: 2
			width: 50
			height: barra.height / 1.05
			color: Colors.active

			Text {
			    anchors.centerIn: parent
			    text: horario.time
			    color: Colors.foreground
			    font.pixelSize: 12
		   	 }

		    }

		    Rectangle{
			x: barra.width - this.width 
			y: barra.height / 2 - this.height / 2

			radius: 2
			width: 70
			height: barra.height / 1.05
			color: Colors.active

			Text{
				anchors.centerIn: parent
				text: Qt.formatDateTime(clock.date, "dd/MM/yyyy")
				color: Colors.foreground
				font.pixelSize: 12
		
			}
	 	  }

  	 }

	 implicitHeight: 20	
	 }
    }
    }
}
