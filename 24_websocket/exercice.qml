import QtQuick 2.0
import QtWebSockets 1.1

Item {
    id: item1
    width: 1000
    height: 800

    WebSocket {
        uri: "wss://discordapp.io:PORT/?v=VERSION&client_id=CLIENT_ID&encoding=ENCODING"
    }

}
