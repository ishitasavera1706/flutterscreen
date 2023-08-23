import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Catagory

class HomeScreen extends StatelessWidget {
  List catNames=[
    "Catagory",
    "Cold Drink",
    "Food",
    "Kichen",
    "Mobile Accessories",
    "Electonics"
  ];
  List catColors=[
    Colors.redAccent,
    Colors.green,
    Colors.brown,
    Colors.teal,
    Colors.redAccent,
    Colors.blueGrey,
  ];
  List<Icon> catIcons=[
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.severe_cold,color: Colors.white,size: 30,),
    Icon(Icons.food_bank,color: Colors.white,size: 30,),
    Icon(Icons.kitchen,color: Colors.white,size: 30,),
    Icon(Icons.earbuds,color: Colors.white,size: 30,),
    Icon(Icons.laptop_mac,color: Colors.white,size: 30,),
  ];
  List imgList=[
    "70off",
    "90off",
    "70off",
    "90off",
  ];
  List vidList=[
    "10-50 % OFF",
    "UP to 9% OFF",
    "flat 50% OFF",
    "flat 90% OFF",
  ];
  List itemList=[
    "Mobile Accessories",
    "Electonics",
    "Houshold",
    "Grocessary",
  ];
  List dayList=[
    "2 days left",
    "5 days left",
    "3 days left",
    "1 days left",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),


                )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],

                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 10,bottom: 10),
                  child: Text(
                    "Welcome To I Mart",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.7),

                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        size: 25
                      ),
                    ),

                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Column(children: [
              GridView.builder(
                itemCount:catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context,index)
                {
                  return Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: catColors[index],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: catIcons[index],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight:FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight:FontWeight.w700,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                itemCount:imgList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:
                  (MediaQuery.of(context).size.height-50-25)/(4*240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 00,
                ),
                itemBuilder: (context,index)
                {
                  return InkWell(
                    onTap: (){
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5),
                            child: Image.asset("assets/${imgList[index]}.jpg",
                              height: 170,
                              width: 170,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            imgList[index],
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Colors.red.withOpacity(0.9)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            vidList[index],
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepPurple.withOpacity(0.5)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            itemList[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            dayList[index],
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.pink.withOpacity(0.8)
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 35,
        selectedItemColor: Colors.deepPurple,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 18,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label : 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label : 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label : 'Account'),
        ],
      ),
    );
  }
}
