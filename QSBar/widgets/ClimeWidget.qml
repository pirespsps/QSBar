import QtQuick
import Quickshell.Widgets
import "../"

Rectangle{

    Clime{
        id: clime
    }
			x: barra.width - this.width 
			y: barra.height / 2 - this.height / 2

			radius: 2
			width: 90
			height: barra.height
			color: Colors.active

            Row{
				anchors.centerIn: parent
				spacing: 10
				height: parent.height

                Image{
                    source: clime.icon
					y: parent.height - this.height
					width: 30
					height: 30
                }

	            Text{
					width:25
					y: parent.height/2 - this.height/2
    			    text: clime.temp
	    			color: Colors.foreground
		    	 	font.pixelSize: 12
			    }
                
            }
	 	}