import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GolfPageDetail extends StatelessWidget {
  const GolfPageDetail({Key? key}) : super(key: key);

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
                        "https://statics.vinpearl.com/styles/267x267/public/2022_03/534%20%C3%97%20534%20px-1%20(1)_1648712162.png.webp?itok=3qhlydUA",
                        "https://statics.vinpearl.com/styles/267x267/public/2022_03/534%20%C3%97%20534%20px-2%20(1)_1648712167.png.webp?itok=Bq3HDuWu",
                        "https://statics.vinpearl.com/styles/267x267/public/2022_03/534%20%C3%97%20534%20px-3%20(1)_1648712175.png.webp?itok=h7YCyWTr",
                        "https://statics.vinpearl.com/styles/267x267/public/2022_03/534%20%C3%97%20534%20px-4%20(1)_1648712181.png.webp?itok=6vPD0Uup"
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
                        Text("2.000.000vnd", style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(width: 130,),
                        Icon(Icons.star, size: 16,),
                        Text("4.6", style: TextStyle(fontSize: 16),)
                      ],
                    ),

                    SizedBox(height: 10,),

                    Text(
                      "VINPEARL GOLF NHA TRANG",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.phone_rounded),
                        SizedBox(width: 5,),
                        Text("(+84) 258 359 0919", style: TextStyle(fontSize: 16),),
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Image.asset("assets/images/maps-and-flags.png", width: 20,),
                        SizedBox(width: 5,),
                        Expanded(
                            child: Text("Hon Tre Island, Vinh Nguyen Ward, Nha Trang City, Khanh Hoa Province, Vietnam", style: TextStyle(fontSize: 16),))
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.mail_outlined),
                        SizedBox(width: 5,),
                        Text("teetime-nhatrang@vinpearl.com")
                      ],
                    ),

                    SizedBox(height: 20,),
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
