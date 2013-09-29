// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: page
    width: 360
    height: 360
    opacity: 1
    gradient: Gradient {
        GradientStop {
            position: 0.540
            color: "#f1d1d1"
        }

        GradientStop {
            position: 1
            color: "#000000"
        }
    }
    visible: true
    border.color: "#178007"
    clip: false

    Text {
        id: institucion
        x: 154
        y: 16
        text: qsTr("Instituto Tecnologico de Costa RIca")
        font.pixelSize: 12
    }

    Text {
        id: nombre
        x: 208
        y: 31
        text: qsTr("Ronny Jimenez")
        font.pixelSize: 12
    }

    Image {
        id: icon
        x: 50
        y: 79
        width: 69
        height: 60
        opacity: 1
        source: "../../Prueba_180.png"
    }

    Rectangle {
        id: rectangle1
        x: 17
        y: 50
        width: 135
        height: 118
        color: "#00000000"
        radius: 27
        border.width: 8
        border.color: "#111111"
        opacity: 1

        MouseArea {
            id: mousearea1
            anchors.fill: parent
            hoverEnabled: false
            onClicked: page.state = ''
        }
    }

    Rectangle {
        id: rectangle2
        x: 168
        y: 155
        width: 135
        height: 118
        color: "#00000000"
        radius: 27
        border.color: "#111111"

        MouseArea {
            id: mousearea2
            anchors.fill: parent
            hoverEnabled: false
            onClicked: page.state = 'Estado_2'

        }
        border.width: 8
        opacity: 1
    }

    states:
        State {
                name: "Estado_2"
                PropertyChanges {
                x: rectangle2.x
                y: rectangle2.y
                }

            }

}
