import QtQuick
import "../"

Rectangle{
			x: barra.width - this.width 
			y: barra.height / 2 - this.height / 2

			radius: 2
			width: 70
			height: barra.height 
			color: Colors.active

			Text{
				anchors.centerIn: parent
				text: Qt.formatDateTime(clock.date, "MMMM dd")
				color: Colors.foreground
				font.pixelSize: 12
		
			}
	 	}