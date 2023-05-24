import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RestaurantPageDetail extends StatelessWidget {
  const RestaurantPageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.36,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                      ),
                      items: [
                        "https://statics.vinpearl.com/styles/image800x600/public/2021_08/nha-hang-lagoon-vinpearl-nha-trang-2_1628430565.jpg.webp?itok=HMJVlJEc",
                        "https://statics.vinpearl.com/styles/image800x600/public/2021_08/nha-hang-lagoon-vinpearl-nha-trang-4_1628430567.jpg.webp?itok=cjzpo_8v",
                        "https://statics.vinpearl.com/styles/image800x600/public/2021_08/nha-hang-lagoon-vinpearl-nha-trang-6_1628430569.jpg.webp?itok=T_BAk13M",
                        "https://statics.vinpearl.com/styles/image800x600/public/2021_08/nha-hang-lagoon-vinpearl-nha-trang-3_1628430566.jpg.webp?itok=NHuylN8B"
                        // Add more image URLs here
                      ].map((item) {
                        return Container(
                          padding: EdgeInsets.only(top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.network(
                              item,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white,),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Expanded(child: Container()), // To align the title to the center, you can use an Expanded widget
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        //Giá
                        Text("2.000.000vnd", style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize: 17),),
                        SizedBox(width: 130,),
                        Icon(Icons.star, size: 16,),
                        Text("4.6", style: TextStyle(fontSize: 16),)
                      ],
                    ),

                    SizedBox(height: 10,),

                    Text(
                      "Lagoon restaurant",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.phone_rounded),
                        SizedBox(width: 5,),
                        Text("(+84) 258 359 9099", style: TextStyle(fontSize: 16),),
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Image.asset("assets/images/maps-and-flags.png", width: 20,),
                        SizedBox(width: 5,),
                        Expanded(
                            child: Text("Vinpearl Condotel Beachfront Nha Trang 78 - 80 Tran Phu Street, Loc Tho Ward, Nha Trang City", style: TextStyle(fontSize: 16),))
                      ],
                    ),

                    SizedBox(height: 10,),
                    Text("Desription", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                    SizedBox(height: 10,),
                    Text("Located on the 4th floor of Vinpearl Condotel Beachfront Nha Trang, "
                        "having a capacity of around 150 guests, Lagoon Restaurant offers à la "
                        "carte menu for lunch and dinner with a variety of signature Vietnamese "
                        "dishes and a collection of diverse Asian-Western menus. Here customers "
                        "will enjoy their meals in a luxurious and delicate culinary space inspired "
                        "by Oriental architecture. Every corner of the restaurant is meticulously "
                        "decorated as this is a place not only to gather with friends and family "
                        "but also to come back every single time guests visit the beach town of "
                        "Nha Trang, thanks to the food prepared by our talented famous chefs.")

                  ],
                ),
              ),
              Center(
                child: Container(
                  width: 220,
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add service to cart logic goes here
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add to cart ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        Icon(Icons.navigate_next_outlined,)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      primary: Colors.orange[300],
                      minimumSize: Size(220, 60),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
