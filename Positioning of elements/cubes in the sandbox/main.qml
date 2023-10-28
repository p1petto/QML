import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("cubics")

    Rectangle {
        width: 150
        height: 150
        anchors.centerIn: parent



        My_Comp {
            id: rect1
            comColor: "green"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
        }

        My_Comp {
            id: rect2
            comColor: "blue"
            anchors.left: rect1.right
            anchors.bottom: parent.bottom
        }

        My_Comp {
            id: rect3
            comColor: "red"
            anchors.left: rect2.right
            anchors.bottom: parent.bottom
        }

        My_Comp {
            id: rect4
            comColor: "yellow"
            anchors.bottom: rect1.top
            anchors.right: parent.horizontalCenter
        }

        My_Comp {
            id: rect5
            comColor: "purple"
            anchors.bottom: rect2.top
            anchors.left: parent.horizontalCenter
        }

        My_Comp {
            id: rect6
            comColor: "orange"
            anchors.bottom: rect4.top
            anchors.horizontalCenter: parent.horizontalCenter
        }


    }
}
