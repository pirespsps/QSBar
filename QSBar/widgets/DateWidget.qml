import QtQuick
import Quickshell
import "../"

Rectangle{

	SystemClock {
 		id: clock
  		precision: SystemClock.Hour
	}

	x: barra.width - this.width 
	y: barra.height / 2 - this.height / 2

	radius: 2
	width: 70
	height: barra.height 
	color: Colors.active

	Text{
		anchors.centerIn: parent
		text: Qt.formatDate(clock.date, "MMMM dd",)
		color: Colors.foreground
		font.pixelSize: 12
	}
}