import 'package:financeapp/core/data/list_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 320,

                child: _head()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction History",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
              ),),
                  Text("sell all",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),),
                ],
              ),
            ),
          ),
          
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/image/${geter()[index].image!}',height: 40,),

                
              ),
              title: Text(geter()[index].name!,style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),),
              subtitle: Text(geter()[index].time!,style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
              trailing: Text(geter()[index].fee!,style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color:geter()[index].buy! ? Colors.red:Colors.green,
              ),),
            );
          },
            childCount: geter().length


          ),
         
          ),


        ] ),
      ),
    );
  }

  Widget _head() {
    return Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Color(0xff368983),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                        left: 340,
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Color.fromRGBO(250, 250, 250,0.1),
                            child: Icon(Icons.notification_add_outlined,size: 30,color: Colors.white,),
                          ),
                    )),

                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good afternoon',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 244, 223, 223)
                          ),),
                          Text('Good afternoon',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                          ),),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: 160,
            left: 20,
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 47, 125,121),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(47, 125, 121,0.3),
                    offset: Offset(0, 6),
                    blurRadius: 12,
                    spreadRadius: 6,
                  )
                ]

              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Good afternoon',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                        Icon(Icons.more_vert,color: Colors.white,),


                      ],
                    ),
                  ),
                  SizedBox(height: 7,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text("\$ 2,957",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Color.fromARGB(255, 85, 145, 141),
                          child: Icon(Icons.arrow_circle_down,color: Colors.white,size: 19,),

                        ),
                        SizedBox(width: 7,),
                        Text("Income",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 216, 216, 216),

                        ),),
                        Spacer(),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Color.fromARGB(255, 85, 145, 141),
                          child: Icon(Icons.arrow_upward,color: Colors.white,size: 19,),

                        ),

                        SizedBox(width: 7,),
                        Text("Expensive",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 216, 216, 216),

                        ),),

                      ],
                    ),
                  ),
                  SizedBox(height: 6,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$ 1,450',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.white,

                        ),),
                        Text('\$450',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.white,

                        ),),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      );
  }
}
