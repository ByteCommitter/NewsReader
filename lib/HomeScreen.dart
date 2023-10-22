import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  final List<Widget> _pages = <Widget>[
   ListView(
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ 
              const SizedBox(height: 5,), 
              Container(
                height: 210,
                width: 185,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Color.fromARGB(255, 0, 0, 0).withOpacity(0.75), BlendMode.dstATop),
                  image: const AssetImage("images/random.jpg",),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text("Meet new\npeople",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ),
              const SizedBox(height: 5),
              ]),
        
          
          Column(
          children:
          [
                const SizedBox(height: 5,width:10),
                Container(
                  height: 97,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                    colorFilter: ColorFilter.mode(Color.fromARGB(255, 0, 0, 0).withOpacity(0.7), BlendMode.dstATop),
                    image: AssetImage("images/random.jpg"),fit: BoxFit.cover,),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Top meeting\nplaces",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                const SizedBox(height: 15,width:10),
                Container(
                  height: 97,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(colorFilter: ColorFilter.mode(Color.fromARGB(255, 0, 0, 0).withOpacity(0.7), BlendMode.dstATop),
                    image: AssetImage("images/random.jpg"),fit: BoxFit.cover,),
                  ),
                  alignment: Alignment.center,
                  child:const Text("New places to\nexplore",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ])
        ],
      ),
        
        const SizedBox(height: 15,),
        //Use mediaqueries here to adjust for different screen sizes in use. Change when need to modify.
        Row(children: [
          const SizedBox(width:20),
          const Text("Public Events",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
          const SizedBox(width: 140,),//use media query, prob modify later if need be
          const Text("Sort",style: TextStyle(fontSize: 22),),
          const SizedBox(width: 3,),
          IconButton(onPressed:(){print("sorted");},icon:Icon(Icons.sort),),//cant make constant
        ],),
        const SizedBox(height: 15,),

        //Use a listbuilder in a future in case of using apis to create a row of the below containers.
        Column(children: 
        [
        Container(//use mediaqueries if required [cmd- MediaQuery.of(context).size.width]
                  height: 230,
                  width: 370,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(image: AssetImage("images/random.jpg"),fit: BoxFit.cover,),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: 
                    Column(children: [
                      const SizedBox(height: 15,),
                      
                      //Share and Like
                      Row(children:[
                        const SizedBox(width: 10,),
                        GestureDetector(
                        onTap: (){
                          print("Share");
                        },
                        child: Container(
                          width:70,
                          height: 28,
                          decoration: const BoxDecoration(//remove const keyword when changes are made
                                      color: Color.fromARGB(255, 167, 165, 165),
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                          child:Text("Share",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,)
                        )),
                        
                        const SizedBox(width:245),

                        GestureDetector(
                        onTap: (){
                          print("Liked");
                        },
                        child: Container(
                            width:35,
                            height: 35,
                          //color: Colors.grey.withOpacity(0.9),
                          decoration: const BoxDecoration(//remove const keyword when changes are made
                                      color: Color.fromARGB(255, 167, 165, 165),
                                      shape:BoxShape.circle,
                                    ),
                          child:Icon(Icons.heart_broken_outlined,color: Colors.white,) //couldnt find heart icon, use it when need be
                        )),
                      ]),

                      const SizedBox(height: 75,),

                      GestureDetector(
                        onTap: (){
                          //goes to restaurant page
                        },
                        child:Container(
                              height: 105,
                              decoration: const BoxDecoration(//remove const keyword when changes are made
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                              ),
                              child:Row(children: [
                                      const SizedBox(width:15),
                                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        SizedBox(height: 10,),
                                        Text('Looters',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)) ,
                                        SizedBox(height: 5,),
                                        Text('2 KM',style: TextStyle(fontSize: 17,color: Colors.grey)) ,//text would change acc to api here in this entire column
                                        SizedBox(height: 7,),
                                        Container(
                                            width:50,
                                            height: 19,
                                            decoration: const BoxDecoration(//remove const keyword when changes are made
                                                        color: Colors.green,
                                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                                        ),
                                              child:Text("⭐ 4.2",style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,)
                                            )
                                        ],
                                      ),
                                      
                                      const SizedBox(width: 170),

                                      Column(crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                            const SizedBox(height: 12),
                                            Container(
                                            width:50,
                                            height: 20,
                                            decoration: const BoxDecoration(//remove const keyword when changes are made
                                                        color: Colors.purpleAccent,
                                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                                        ),
                                            child:Text(" 72% ",style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,)
                                            ),
                                            SizedBox(height: 5,),
                                            Text('Nov 5,2022',style: TextStyle(fontSize: 17,color: Colors.grey)) ,//text would change acc to api here in this entire column
                                            SizedBox(height: 7,),
                                            Text('8:30 PM',style: TextStyle(fontSize: 17,color: Colors.grey)) ,//text would change acc to api here in this entire column
                                      ],)


                              ],),
                          ) 
                        )
                  ],)
                  ),
        
        const SizedBox(height: 20,),
        
        Container(//use mediaqueries if required
                  height: 230,
                  width: 370,
                  decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(image: AssetImage("images/random.jpg"),fit: BoxFit.cover,),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: 
                    Column(children: [
                      const SizedBox(height: 15,),
                      
                      //Share and Like
                      Row(children:[
                        const SizedBox(width: 10,),
                        GestureDetector(
                        onTap: (){
                          print("Share");
                        },
                        child: Container(
                          width:70,
                          height: 28,
                          decoration: const BoxDecoration(//remove const keyword when changes are made
                                      color: Color.fromARGB(255, 167, 165, 165),
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                          child:Text("Share",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,)
                        )),
                        
                        const SizedBox(width:245),

                        GestureDetector(
                        onTap: (){
                          print("Liked");
                        },
                        child: Container(
                            width:35,
                            height: 35,
                          //color: Colors.grey.withOpacity(0.9),
                          decoration: const BoxDecoration(//remove const keyword when changes are made
                                      color: Color.fromARGB(255, 167, 165, 165),
                                      shape:BoxShape.circle,
                                    ),
                          child:Icon(Icons.heart_broken_outlined,color: Colors.white,) //couldnt find heart icon, use it when need be
                        )),
                      ]),

                      const SizedBox(height: 75,),

                      GestureDetector(
                        onTap: (){
                          //goes to restaurant page
                        },
                        child:Container(
                              height: 105,
                              decoration: const BoxDecoration(//remove const keyword when changes are made
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                              ),
                              child:Row(children: [
                                      const SizedBox(width:15),
                                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        SizedBox(height: 10,),
                                        Text('Hooters',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)) ,
                                        SizedBox(height: 5,),
                                        Text('2 KM',style: TextStyle(fontSize: 17,color: Colors.grey)) ,//text would change acc to api here in this entire column
                                        SizedBox(height: 7,),
                                        Container(
                                            width:50,
                                            height: 19,
                                            decoration: const BoxDecoration(//remove const keyword when changes are made
                                                        color: Colors.green,
                                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                                        ),
                                              child:Text("⭐ 4.2",style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,)
                                            )
                                        ],
                                      ),
                                      
                                      const SizedBox(width: 158),

                                      Column(crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                            const SizedBox(height: 12),
                                            Container(
                                            width:50,
                                            height: 20,
                                            decoration: const BoxDecoration(//remove const keyword when changes are made
                                                        color: Colors.purpleAccent,
                                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                                        ),
                                            child:Text(" 69% ",style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,)
                                            ),
                                            SizedBox(height: 5,),
                                            Text('Nov 27,2022',style: TextStyle(fontSize: 17,color: Colors.grey)) ,//text would change acc to api here in this entire column
                                            SizedBox(height: 7,),
                                            Text('8:00 PM',style: TextStyle(fontSize: 17,color: Colors.grey)) ,//text would change acc to api here in this entire column
                                      ],)


                              ],),
                          ) 
                        )
                  ],)
                  
                 )
        ],)
        

        ]
      ), 
  const Icon(
    Icons.people_alt_outlined,
    size: 150,
  ),
  const Icon(
    Icons.add_circle_outline,
    size: 150,
  ),
  const Icon(
    Icons.chat,
    size: 150,
  ),
  const Icon(
    Icons.chat,
    size: 150,
  ),
];


  @override
  Widget build(BuildContext context){
    
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0,
        leading: IconButton(onPressed:(){Navigator.pop(context);} ,icon:const Icon(Icons.arrow_left,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('Tag',style: TextStyle(color:Color.fromARGB(255, 214, 104, 236),fontWeight: FontWeight.bold,fontSize: 23),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),

      body: _pages.elementAt(_selectedIndex),

      //Bottom Navigation Bar:
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedIconTheme: const IconThemeData(color: Color.fromARGB(255, 214, 104, 236)),
        iconSize: 27,
        selectedItemColor: const Color.fromARGB(255, 214, 104, 236),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0, 
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people_alt_outlined),
        label: 'People',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_circle_outline),
        label: 'Add Place',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.design_services_outlined),
        label: 'Tag',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded),
        label: 'Profile',
      ),
    ],
    currentIndex: _selectedIndex, //New
    onTap: _onItemTapped,
  ),
  

      
    );
  }
}



 


