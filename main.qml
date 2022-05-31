import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

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

    Rectangle {
        id: menuBar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left

        height: parent.height / 10
        color: "red"
    }

    Rectangle {
        id: chatColumn
        anchors.top: menuBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        width: parent.width / 6
        color: "#0a0a29"
    }

    Item {
        id: leftSideWindow
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.right: chatColumn.left
    }

    Item {
        id: middleButtons
        anchors.horizontalCenter: leftSideWindow.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20

        height: 40
        width: 200

        Button {
            id: leaveRoomButton
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            width: 40

            text: "X"
        }

        Button {
            id: findMatchButton
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: leaveRoomButton.right

            text: "FIND MATCH"
        }
    }
}
