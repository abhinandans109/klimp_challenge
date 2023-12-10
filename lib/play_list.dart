import 'package:flutter/material.dart';
import 'package:klimp_challenge/player.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> with TickerProviderStateMixin{
  var _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }
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
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text('Welcome Back!',style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500),),
                  Text('What do you feel like today?',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff433E48),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                        hintText: 'Search song, playslist, artist...',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search_rounded,color: Colors.white,)
                      ),
                    ),

                  ),
                  SizedBox(height: 30,),
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.pink,
                    controller: _tabController,
                    tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Recent'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Top 50'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Chill'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('R&B'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Hindi'),
                    ),

                  ],),
                  SizedBox(height: 10,),
                  Container(
                    height: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...List.generate(5, (index) => _song())
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Your favourites',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(height: 20,),
                  Expanded(child: ListView(
                    children: List.generate(10, (index) => _listSong()),
                  ))

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _song() {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>Player()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/song_img.png'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('R&B Playlist',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Chill your mind',style: TextStyle(color: Colors.grey),),
            ),
          ],
        ),
      ),
    );
  }

  _listSong() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/song_tile.png'),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Bye Bye',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(height: 3,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Marshmello, Juice WRLD',style: TextStyle(color: Colors.grey),),
                  ),

                ],
              ),
            ],
          ) ,
          Text('2:09',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)
        ],
      ),
    );
  }
}
