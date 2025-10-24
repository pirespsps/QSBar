import QtQuick
import "../"

Item{
	id: timeWidget

	Time {
		id: horario
	}

	Rectangle {
		anchors.centerIn: parent

		radius: 2
		width: 50
		height: barra.height / 1.05
		color: "transparent"

		Text {
		    anchors.centerIn: parent
		    text: horario.time
		    color: Colors.foreground
		    font.pixelSize: 15
		}

	}
}