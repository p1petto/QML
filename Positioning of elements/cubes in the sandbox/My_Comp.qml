import QtQuick 2.15

Item {
    width:50
    height:50
    property alias comColor: rectcom.color
    Rectangle{
        id:rectcom
        width:50
        height:50
    }
}
