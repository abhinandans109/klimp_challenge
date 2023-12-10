import 'package:flutter/material.dart';
import 'package:klimp_challenge/play_list.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset('assets/images/background.png',fit: BoxFit.fitWidth,),
              ),
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children :[
                Text('Feel the beat',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 20),
                  child: Text('Emmerse yourself into \nworld of music today',style: TextStyle(color: Colors.grey,fontSize: 17),textAlign: TextAlign.center,),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>PlayList()));
                  },
                  child: Container(
                    width: 200,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        gradient: LinearGradient(colors: [Color(0xff842ED8),Color(0xff9D1DCA),Color(0xffDB28A9)])
                    ),
                    child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                  ),
                ),
                SizedBox(height: 70,)

              ]
          )
        ],
      ),
    );
  }
}

