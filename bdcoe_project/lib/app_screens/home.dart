import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Big Data")),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.lightBlueAccent,
          margin: EdgeInsets.only(bottom: 6.0),
          child: Column(
            children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child: Text("Big Data ",
                     textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 15.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300)),
              ),
              Expanded(
                child: Text("Centre OF Excellence! ",
                textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 15.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300)),
              )
            ]),
            Row(children: <Widget>[
              Expanded(
                child: Text("HOME! ",
                textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300)),
              ),
              Expanded(
                child: Text("OUR TEAM! ",
                textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300)),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                child: Text("DOMAIN WE WORK  ",
                textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300)),
              ),
              Expanded(
                child: Text("CONTACT ",
                textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300)),
              )
            ]),
            BigDataHomeIcon(),
            InterestedButton(),
          ]),
        ),
        ),
    );
  }
}

class BigDataHomeIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     AssetImage bigDataIcon = new AssetImage('lib/images/images.png');
     Image image= Image(image: bigDataIcon,width: 67.0 ,height: 55.0,);
     return Container(child: image ,);
  }

}

class InterestedButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.indigoAccent,
        child: Text(
          "click here for information",
          style: TextStyle(
                 fontSize: 15.0,
                color: Colors.white54,
                fontFamily: 'Raleway',
          ),
        ),
        elevation: 5.0,
        onPressed: ()  {
           bigData(context);
        }),
      );
  }

 void bigData (BuildContext context){
     var alertDialog = AlertDialog(
       title:  Text("opened successfully"),
       content: Text("Have A Good Day"),
     );
   showDialog(context: 
   context,
   builder:(BuildContext context){
     return alertDialog;
   }
   );
 }
}