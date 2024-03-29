import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

//import DB 1.0

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
                height: parent.height * 0.9
                width: parent.width * 0.9
                border.width: 2
                border.color: secondaryColor
                radius: 10
                anchors.horizontalCenter: parent.horizontalCenter
                property int infosize: 17

                GridLayout {
                    id: infopanel
                    columns: 5
                    rows: 4
                    anchors.fill: parent
                    Layout.margins: 10
                    // (column, row)

                    // (1-4,1)
                    Text {
                        id: infopanelLabel
                        text: "All Clients"
                        font.pointSize: infobox.infosize
                        color: color4
                        Layout.row: 1
                        Layout.columnSpan: 5
                        Layout.preferredHeight: 25
                        Layout.fillWidth: true
                        Layout.leftMargin: 15
                        Layout.topMargin: 15
                    }

                    NiceButton {
                        id: addclient
                        txt: "Add Client"
                        btnRadius: 10
                        fontsize: 15
                        Layout.row: 2
                        Layout.columnSpan: 5
                        Layout.preferredWidth: 150
                        Layout.preferredHeight: 50
                        Layout.topMargin: 15
                        Layout.leftMargin: 15
                        onClicked: addClient()
                    }

                    RowButton {
                        id: columnLabels
                        Layout.row: 3
                        Layout.columnSpan: 5
                        Layout.fillWidth: true
                        Layout.preferredHeight: 30
                        Layout.topMargin: 15
                        isEnabled: true
                        firstMargin: 10
                        txt1: "Unique ID"
                        txt2: "Active?"
                        txt3: "Status"
                        txt4: "Last Seen"
                        txt5: "Software"
                    }

                    ListView {
                        id: listview
                        Layout.row: 4
                        Layout.columnSpan: 5
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.bottomMargin: 20
                        ScrollBar.vertical: ScrollBar {
                            parent: listview
                            policy: ScrollBar.AlwaysOn
                            anchors.right: parent.right
                            snapMode: ScrollBar.SnapOnRelease
                        }


                        model: cList
                        delegate: RowButton {
                            Layout.fillWidth: true
                            Layout.preferredHeight: 30
                            firstMargin: 20
                            implicitHeight: 30
                            implicitWidth: parent.width
                            txt1: model.modelData.unique_id
                            txt2: model.modelData.active
                            txt3: model.modelData.status
                            txt4: model.modelData.last_seen
                            txt5: model.modelData.software_id
                            onClicked: console.log("clicked a client, now do something")
                        }//end delegate

                    }//end listview

                } // end infopanel GridLayout

            } // end infobox Rectangle

        } // end Column

    } // End Rectangle

    function addClient(){



        db.createClient(server.gen_rand(31));
        listview.forceLayout(); //force refresh adding new client

        console.log(cList);

    }

} // End Item
