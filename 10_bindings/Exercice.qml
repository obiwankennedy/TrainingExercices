import QtQuick 2.0
import QtQuick.Controls 2.1


Item {
    id: item1
    width: 1000
    height: 800

   Slider {
       anchors.top: parent.top
       anchors.left: parent.left
       property real realValue: (position*380)+20


       from: 20
       to: 400
       value: 20
       snapMode: Slider.SnapAlways
   }

}
