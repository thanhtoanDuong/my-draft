import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("League of Legends Client")

    //main window appears in center of Screen
    Component.onCompleted: {
            x = Screen.width / 2 - width / 2
            y = Screen.height / 2 - height / 2
        }

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#0E1013"
    }
}
