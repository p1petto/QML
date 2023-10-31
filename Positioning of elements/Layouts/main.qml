import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id:win;
    width: 360
    height: 640
    minimumWidth: 360
    minimumHeight: 640
    visible: true
    title: qsTr("Loyouts")
    Item{
        anchors.fill:parent
        ColumnLayout{
            anchors.fill:parent
            spacing:0

            Line_Bar{
                id: head
                Layout.alignment: Qt.AlignTop
                height: win.height / 9

                Item{
                    width: content.width
                    height: content.height
                    anchors.centerIn: parent
                    RowLayout{
                        anchors.fill:parent
                        spacing:10

                        Rectangle{
                            width: 50
                            height: 50
                            color: 'darkgray'
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: content.left

                            Text {
                                text: "<-"
                                anchors.centerIn: parent
                            }

                        }

                    }


                    Text {
                        text: "header"
                        anchors.centerIn: parent

                    }


                }
            }
            Rectangle {
                id: body
                color: 'gainsboro'
                Layout.fillWidth: true
                Layout.fillHeight: true
                //                    width: win.width
                //                    height: win.height - head.height * 2
                Layout.alignment: Qt.AlignLeft
                //                    anchors.top: head.bottom

                Rectangle {
                    id: content
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
                anchors.top: body.bottom
                height: win.height / 9

                RowLayout{
                    anchors.fill:parent
                    spacing:10
                    Bt {
                        id: bt_first
                        //                        Layout.alignment: Qt.AlignLeft
                        Text {
                            text: "1"
                            anchors.centerIn: parent
                        }
                    }
                    Bt {
                        id: bt_second
                        //                        Layout.alignment: Qt.AlignCenter
                        Text {
                            text: "2"
                            anchors.centerIn: parent
                        }
                    }
                    Bt {
                        id: bt_third
                        //                        Layout.alignment: Qt.AlignRight
                        Text {
                            text: "3"
                            anchors.centerIn: parent
                        }
                    }
                }

            }

        }
    }


}
