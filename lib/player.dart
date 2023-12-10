import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset('assets/images/background2.png',fit: BoxFit.fitWidth,),
              ),
            ],
          ),
          SafeArea(
            minimum: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    Image.asset('assets/images/three_dots.png')
                  ],
                ),
                SizedBox(height: 20,),
                Image.asset('assets/images/player_image.png'),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('R&B Playlist',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                        SizedBox(height: 3,),
                        Text('Chill your mind',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    Image.asset('assets/images/heart.png')
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Container(
                      height: 2,color: Colors.white,),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
                        Text('2.09',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/shuffle.png'),
                          Row(
                            children: [
                              Image.asset('assets/images/skip-back.png'),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Image.asset('assets/images/pause_btn.png'),
                              ),
                              Image.asset('assets/images/skip-forward.png'),
                            ],
                          ),
                          Image.asset('assets/images/repeat.png'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
