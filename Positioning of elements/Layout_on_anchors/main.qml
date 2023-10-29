import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 360
    height: 640
    minimumHeight: 640
    minimumWidth: 360
    visible: true
    title: qsTr("Hello World")
    Line_Bar {
        id: 'head'
        anchors.top: parent.top

        Text {
                text: "header"
                anchors.centerIn: parent
            }
    }
    Rectangle {
        id: 'body'
        color: 'gainsboro'
        width: parent.width
        height: parent.height - head.height * 2
        anchors.top: head.bottom

        Rectangle {
            width: parent.width * 0.96
            height: parent.height * 0.96
            color: "transparent"
            border.color: "gray"
            border.width: 1
            anchors.centerIn: parent
            Text {
                    text: "content"
                    anchors.centerIn: parent
                }
        }
    }
    Line_Bar {
        id: 'foot'
        anchors.bottom: parent.bottom
        Bt {
            id: 'bt_first'
            anchors.left: parent.left
            Text {
                    text: "1"
                    anchors.centerIn: parent
                }
        }

        Bt {
            id: 'bt_second'
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                    text: "2"
                    anchors.centerIn: parent
                }
        }

        Bt {
            id: 'bt_third'
            anchors.right: parent.right
            Text {
                    text: "3"
                    anchors.centerIn: parent
                }
        }


    }
}
