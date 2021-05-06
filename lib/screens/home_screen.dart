import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home-screen';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 32,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.black45),
                ),
                child: Center(
                  child: Text(
                    "Furniture",
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                height: 32,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.black45),
                ),
                child: Center(
                  child: Text(
                    "Furniture",
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                height: 32,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.black45),
                ),
                child: Center(
                  child: Text(
                    "Furniture",
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ItemCard(),
              ItemCard(),
              ItemCard(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Furniture",
                ),
                Text(
                  "See all",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ListView(
            children: [
              SmallItemCard(),
              SmallItemCard(),
              SmallItemCard(),
            ],
          )
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
