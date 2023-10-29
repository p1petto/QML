import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("Hello World")

    Circle_Green{
        id: 'head_of_frog'
        width: 200
        height: 200
        anchors.centerIn: parent
        Mouth {
            width: parent.width / 2
            height: parent.width / 2
            anchors.centerIn: parent
        }
    }

    Circle_Green{
        id: 'left_eye'
        width: 80
        height: 80
        anchors.left: head_of_frog.left
        anchors.verticalCenter: head_of_frog.top

        White_Circle {
            Pupil{
            }
        }
    }

    Circle_Green{
        id: 'right_eye'
        width: 80
        height: 80
        anchors.right: head_of_frog.right
        anchors.verticalCenter: head_of_frog.top

        White_Circle {
            Pupil{
            }
        }
    }

}
