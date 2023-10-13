import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home-screen';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 86.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        padding: new EdgeInsets.only(top: 20.0),
        child: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            bottomAppBarColor: Colors.green,
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(color: Colors.grey),
                ),
          ), // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: new Icon(Icons.home),
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                label: 'search',
                icon: new Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.transparent,
                ),
              ),
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.perm_identity),
              ),
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  'Welcome to this app',
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Hi Ramboo',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search product or something...',
                  ),
                  Icon(
                    Icons.search,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Container(
          //       height: 32,
          //       width: 160,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(12),
          //         color: Colors.grey[100],
          //         border: Border.all(color: Colors.black45),
          //       ),
          //       child: Center(
          //         child: Text(
          //           "Furniture",
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 12,
          //     ),
          //     Container(
          //       height: 32,
          //       width: 160,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(12),
          //         color: Colors.grey[100],
          //         border: Border.all(color: Colors.black45),
          //       ),
          //       child: Center(
          //         child: Text(
          //           "Furniture",
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 12,
          //     ),
          //     Container(
          //       height: 32,
          //       width: 160,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(12),
          //         color: Colors.grey[100],
          //         border: Border.all(color: Colors.black45),
          //       ),
          //       child: Center(
          //         child: Text(
          //           "Furniture",
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          // SizedBox(
          //   height: 16,
          // ),
          // // ListView(
          // //   scrollDirection: Axis.horizontal,
          // //   children: [
          // //     ItemCard(),
          // //     ItemCard(),
          // //     ItemCard(),
          // //   ],
          // // ),
          // // SizedBox(
          // //   height: 16,
          // // ),
          // // Padding(
          // //   padding: EdgeInsets.symmetric(horizontal: 16),
          // //   child: Row(
          // //     mainAxisAlignment: MainAxisAlignment.center,
          // //     children: [
          // //       Text(
          // //         "Furniture",
          // //       ),
          // //       Text(
          // //         "See all",
          // //       ),
          // //     ],
          // //   ),
          // // ),
          // // SizedBox(
          // //   height: 16,
          // // ),
          // // ListView(
          // //   children: [
          // //     SmallItemCard(),
          // //     SmallItemCard(),
          // //     SmallItemCard(),
          // //   ],
          // // )
        ],
      )),
    );
  }
}

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Desk",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Brown, Red, White",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$ 100",
          ),
        ],
      ),
    );
  }
}

class SmallItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          Column(
            children: [
              Text(
                "Desk",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "40 Products",
              ),
            ],
          ),
          Spacer(),
          Text(
            "\$ 100",
          ),
        ],
      ),
    );
  }
}
