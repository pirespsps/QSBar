import Quickshell
import Quickshell.Io
import QtQuick
import "./widgets" as Widgets

ShellRoot {

	SystemClock {
 		id: clock
  		precision: SystemClock.Hour
	}

    Variants {

	model: Quickshell.screens

	Item {
	    id: root
	    required property var modelData
		property bool isVisible: false

	    PanelWindow {
		id: barra_wind

		visible: parent.isVisible

		screen: root.modelData

		 anchors {
		    bottom: true
		    left: true
		    right: true
		} 

		margins {
		    top: 0
		    left: 0
		    right: 0 
		    bottom: 0
		}

		surfaceFormat {
		    opaque: false
		}

		color: "transparent"

		Rectangle {
		    id: barra
			anchors.centerIn: parent

			visible: parent.visible
		    
			width: parent.width
		    height: parent.height
		    color: Colors.background
			opacity:0.93

			Widgets.TimeWidget{
				id: time_widget
				x: barra.width / 2
				y: barra.height / 2 - this.height / 2 
			}

		    Widgets.DateWidget{
			id: date_widget
			x: barra.width - this.width 
			y: barra.height / 2 - this.height / 2
			}

  	 }

	 height: 25

	 }

    }
}
}

//MouseArea{
//			id: mouseArea
//			anchors.fill:parent
//			hoverEnabled:true
//			height:20
//
//			anchors{
//				bottom: parent.bottom
//				left: parent.left
//				right: parent.right
//			}
//
//			onEntered: root.isVisible = true
//
//			onExited: {
//				if(!containsMouse){
//					root.isVisible = false
//				}
//			}
//		}