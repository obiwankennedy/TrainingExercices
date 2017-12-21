import QtQuick 2.0


Canvas {
    id: frise
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.verticalCenterOffset: -200
    height: app.height/4
    onPaint : {
        var list = ["昨","の","は","ぷ","さ","a","字","%","D","ĥ","œ","»","@","π","β","μ","Ω","Σ","ϖ","Δ̇","Ψ","ϻ","Ϡ","д","ф","ѭ","ѱ"];

        var heightOfArrow = app.height/20
        var lineW = 4
        var ctx = getContext("2d")
        //ctx.fillStyle = Qt.rgba(0, 0, 0, 1);
        //ctx.lineWidth = lineW;
        ctx.beginPath()
        ctx.moveTo(0,heightOfArrow)
        ctx.lineTo(frise.width-200,heightOfArrow)
        ctx.lineTo(frise.width-200,0)
        ctx.lineTo(frise.width,frise.height/2)
        ctx.lineTo(frise.width-200,frise.height)
        ctx.lineTo(frise.width-200,frise.height-heightOfArrow)
        ctx.lineTo(0,frise.height-heightOfArrow)
        ctx.closePath()
        //ctx.stroke();


        var gradient = ctx.createLinearGradient(0, 0, frise.width, frise.height);
        var hslValue = 0;
        var hslStep = 1.0/8
        for(var i = 0; i<8;++i)
        {
            gradient.addColorStop(i*hslStep, Qt.hsla(0.6, hslValue, 0.3, 1.0));
            hslValue+=hslStep
        }
        ctx.fillStyle = gradient
        ctx.fill();

        ctx.fillStyle = "white"

        //var arcValue = ctx.arc(10,frise.height/2,0,2*Math.PI);


    }
}
