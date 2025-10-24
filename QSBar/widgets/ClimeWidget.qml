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
			width: 80
			height: barra.height
			color: Colors.active

            Item{
				anchors.centerIn: parent

                IconImage{
                    source: clime.icon
				    anchors.centerIn: parent
                }

                Text{
				    anchors.centerIn: parent
    			    text: clime.temp
	    		    color: Colors.foreground
		    	    font.pixelSize: 12
			    }
                
            }
	 	}