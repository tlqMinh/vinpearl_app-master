import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:vinpearl_app/page_detail/page_resort_detail.dart';

class ResortPage extends StatelessWidget {
  const ResortPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("Resort Service")),
        actions: [
          GestureDetector(
            onTap: () {

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: 1, end: 0),
                badgeAnimation: const badges.BadgeAnimation.scale(),
                child: const Icon(
                  Icons.shopping_cart,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      
      body: GridView.builder(
        padding: EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1,
            mainAxisSpacing: 25,
          ),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResortPageDetail(),));
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network('https://cf.bstatic.com/xdata/images/hotel/square600/418142776.webp?k=e313a78bc7c97efe03aa10423cd819b7147c621722bf078b93cf92427594b12c&o=&s=1', width: 350, fit: BoxFit.cover)
                        ),
                    ),
                    Expanded(
                      flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // name Service
                              Text(
                                "Vinpearl Luxury Nha Trang",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.phone_rounded),
                                  Text("0258 359 9099"),

                                  SizedBox(width: 110,),
                                  Icon(Icons.star),
                                  Text("4.5")
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Image.asset("assets/images/maps-and-flags.png", width: 20,),
                                  Text("Hon Tre Island, Nha Trang, Vietnam")
                                ],
                              ),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
