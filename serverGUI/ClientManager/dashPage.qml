import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Item {
    id: root

    property color primaryColor: "#1e2124"
    property color secondaryColor: "#42464d"
    property color color3: "#282b30"
    property color color4: "#7a7d82"
    property color trim1Color: "#5ac18e"
    property color trim2Color: "#5ac1c1"
    property color textColor: "white"

    Rectangle {
        id: background
        anchors.fill: parent
        color: primaryColor

        Column {
            id: col
            anchors.fill: parent
            spacing: 10

            Rectangle {
                id: header
                width: parent.width
                height: 40
                color: "transparent"
            }

            Rectangle {
                id: infobox
                color: primaryColor
                height: parent.height * 0.5
                width: parent.width * 0.90
                border.width: 2
                border.color: secondaryColor
                radius: 10
                anchors.horizontalCenter: parent.horizontalCenter
                property int infosize: 17
                property int middlemargin: 55

                GridLayout {
                    id: infopanel
                    columns: 5
                    rows: 6
                    anchors.fill: parent
                    // (column, row)

                    // (1-4,1)
                    Text {
                        id: infopanelLabel
                        text: "Server Information"
                        font.pointSize: infobox.infosize
                        color: color4
                        Layout.row: 1
                        Layout.columnSpan: 4
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (1,2)
                    Text {
                        id: localHostLabel
                        text: "Local Hostname: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 1
                        Layout.row: 2
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (2,2)
                    Text {
                        id: localHostValue
                        text: server.getHost()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 2
                        Layout.row: 2
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (3,2)
                    Text {
                        id: userLabel
                        text: "Username: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 3
                        Layout.row: 2
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: infobox.middlemargin
                        Layout.topMargin: 15
                    }

                    // (4,2)
                    Text {
                        id: userValue
                        text: server.getUser()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 4
                        Layout.row: 2
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (1,3)
                    Text {
                        id: osLabel
                        text: "Operating System: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 1
                        Layout.row: 3
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (2,3)
                    Text {
                        id: osValue
                        text: server.getOS()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 2
                        Layout.row: 3
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (3,3)
                    Text {
                        id: ipLabel
                        text: "IP Address: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 3
                        Layout.row: 3
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: infobox.middlemargin
                        Layout.topMargin: 15
                    }

                    // (4,3)
                    Text {
                        id: ipValue
                        text: server.getIP()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 4
                        Layout.row: 3
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (1,4)
                    Text {
                        id: archLabel
                        text: "CPU Architecture: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 1
                        Layout.row: 4
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (2,4)
                    Text {
                        id: archValue
                        text: server.getArchitecture()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 2
                        Layout.row: 4
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (3,4)
                    Text {
                        id: statusLabel
                        text: "Status: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 3
                        Layout.row: 4
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: infobox.middlemargin
                        Layout.topMargin: 15
                    }

                    // (4,4)
                    Text {
                        id: statusValue
                        text: server.getStatus()
                        font.pointSize: infobox.infosize
                        color: trim1Color //(versionValue.text === "Active") ? trim1Color : "red"
                        Layout.column: 4
                        Layout.row: 4
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (1,5)
                    Text {
                        id: clientsActiveLabel
                        text: "Active Clients: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 1
                        Layout.row: 5
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (2,5)
                    Text {
                        id: clientsActiveValue
                        text: "NumActive" //make function db.strNumActive()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 2
                        Layout.row: 5
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    // (3,5)
                    Text {
                        id: clientsInactiveLabel
                        text: "Inactive Clients: "
                        font.pointSize: infobox.infosize
                        color: textColor
                        Layout.column: 3
                        Layout.row: 5
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: infobox.middlemargin
                        Layout.topMargin: 15
                    }

                    // (4,5)
                    Text {
                        id: clientsInactiveValue
                        text: "NumInactive"// make function db.strNumInactive()
                        font.pointSize: infobox.infosize
                        color: trim1Color
                        Layout.column: 4
                        Layout.row: 5
                        Layout.columnSpan: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                        Layout.bottomMargin: 15
                    }

//                    NiceButton {
//                        id: addclient
//                        txt: "Add Client"
//                        btnRadius: 10
//                        fontsize: 15
//                        Layout.column: 1
//                        Layout.row: 6
//                        Layout.preferredWidth: 150
//                        Layout.preferredHeight: 50
//                        Layout.leftMargin: 15
//                        Layout.topMargin: 20
//                        Layout.bottomMargin: 15
//                        onClicked: server.getUser()
//                    }

                } // end infopanel GridLayout

            } // end infobox Rectangle

        } // end Column

    } // End Rectangle

} // End Item
