import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root
    property string icon //: "https://cdn.weatherapi.com/weather/64x64/night/116.png"
    property string temp //: "16.5"

    Process {
	id: climeProc
	command: ["weather-json"]
	running: true

	stdout: StdioCollector {

	    onStreamFinished: {

			var data = JSON.parse(this.text)

			root.icon = "https:" + data.icon
			root.temp = data.temp

		}

	}
    }

    Timer {
	interval: 900000
	running: true
	repeat: true
	onTriggered: climeProc.running = true
    }
}