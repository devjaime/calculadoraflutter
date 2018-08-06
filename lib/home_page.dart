import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0,factor=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  var resultStr=0;
  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor ~/ num1).toString();
      }
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor * num1).toString();
      }
    });
  }

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor + num1).toString();
      }
    });
  }

   void doSub() {
    setState(() {
        num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor - num1).toString();
      }
    });
  }

void doResult(){
  setState(() {
      t1.text=factor.toString();
    });
}

void doClear() {
    setState(() {
      t1.text = "0";
      factor=0;
    });
  }
 void str0() {
    setState(() {
      t1.text=t1.text + "0";
    });
  }
 void str1() {
    setState(() {
      t1.text=t1.text + "1";
    });
  }

  void str2() {
    setState(() {
      t1.text=t1.text + "2";
    });
  }
   void str3() {
    setState(() {
      t1.text=t1.text + "3";
    });
  }
  void str4() {
    setState(() {
      t1.text=t1.text + "4";
    });
  }

  void str5() {
    setState(() {
      t1.text=t1.text + "5";
    });
  }
   void str6() {
    setState(() {
      t1.text=t1.text + "6";
    });
  }
   void str7() {
    setState(() {
      t1.text=t1.text + "7";
    });
  }

  void str8() {
    setState(() {
      t1.text=t1.text + "8";
    });
  }
   void str9() {
    setState(() {
      t1.text=t1.text + "9";
    });
  }
 
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora Básica"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            new TextField(
              style: new TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black38),
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "..."),
              controller: t1,
            ),
           
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("7"),
                  color: Colors.amberAccent,
                  onPressed: str7,
                ),
                new MaterialButton(
                  child: new Text("8"),
                  color: Colors.amberAccent,
                  onPressed: str8,
                ),
                new MaterialButton(
                  child: new Text("9"),
                  color: Colors.amberAccent,
                  onPressed: str9,
                ),
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: doMul,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("4"),
                  color: Colors.amberAccent,
                  onPressed: str4,
                ),
                new MaterialButton(
                  child: new Text("5"),
                  color: Colors.amberAccent,
                  onPressed: str5,
                ),
                 new MaterialButton(
                  child: new Text("6"),
                  color: Colors.amberAccent,
                  onPressed: str6,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: doDiv,
                ),
              ],
            ),
             new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("1"),
                  color: Colors.amberAccent,
                  onPressed: str1,
                ),
                new MaterialButton(
                  child: new Text("2"),
                  color: Colors.amberAccent,
                  onPressed: str2,
                ),
                 new MaterialButton(
                  child: new Text("3"),
                  color: Colors.amberAccent,
                  onPressed: str3,
                ),
                 new MaterialButton(
                  child: new Text("-"),
                  color: Colors.orange,
                  textColor: Colors.black,
                  onPressed: doSub,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              //mainAxisAlignment: MainAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("DEL"),
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: doClear,
                ),
                new MaterialButton(
                  child: new Text("0"),
                  color: Colors.greenAccent,
                  onPressed: str0,
                ),
                new MaterialButton(
                  child: new Text("="),
                  color: Colors.purpleAccent,
                  textColor: Colors.white,
                  onPressed: doResult,
                ),
                 new MaterialButton(
                  child: new Text("+"),
                  color: Colors.amber,
                  textColor: Colors.black87,
                  onPressed: doAdd,
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}
