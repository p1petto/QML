import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id:win;
    width: 360;
    height: 640
    visible: true
    title: qsTr("Loyouts")

    ColumnLayout{
        anchors.fill:parent
        spacing:0


        Line_Bar{
            id: head

            Text {
                    text: "header"
                    anchors.centerIn: parent
                }
        }
        Rectangle {
                id: body
                color: 'gainsboro'
                width: win.width
                height: win.height - head.height * 2

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
        Line_Bar{
            id: foot
            RowLayout{
                anchors.fill:parent
                spacing:0
                Bt {
                    id: bt_first
                    Layout.alignment: Qt.AlignLeft
                    Text {
                            text: "1"
                            anchors.centerIn: parent
                        }
                }
                Bt {
                    id: bt_second
                    Layout.alignment: Qt.AlignCenter
                    Text {
                            text: "2"
                            anchors.centerIn: parent
                        }
                }
                Bt {
                    id: bt_third
                    Layout.alignment: Qt.AlignRight
                    Text {
                            text: "3"
                            anchors.centerIn: parent
                        }
                }
            }

        }

    }
}
