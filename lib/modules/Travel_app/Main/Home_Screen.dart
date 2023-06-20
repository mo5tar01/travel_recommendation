import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/components.dart';
import '../Details/Details_Screen.dart';
import '../recommendations/recommendations_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          CustomPaint(
            painter: AppBarPainter(),
            size: const Size(100,100),
            child:
            _appBarContent(),



          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40.0,),
            child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal ,
              child: Row(
                  children:[
                    Container(
                      height: 150,
                      width: 150,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //       width: 0.5,),
                      // borderRadius: BorderRadius.circular(10),),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, detailsScreen(),);

                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuOE3qnxDI9Qvij3qxDgQQLCvitvHXGXH_f9_aHO7vA&s"),

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //       width: 0.5,),
                      // borderRadius: BorderRadius.circular(10),),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, detailsScreen(),);

                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuOE3qnxDI9Qvij3qxDgQQLCvitvHXGXH_f9_aHO7vA&s"),

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //       width: 0.5,),
                      // borderRadius: BorderRadius.circular(10),),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, detailsScreen(),);

                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuOE3qnxDI9Qvij3qxDgQQLCvitvHXGXH_f9_aHO7vA&s"),

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //       width: 0.5,),
                      // borderRadius: BorderRadius.circular(10),),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, detailsScreen(),);

                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuOE3qnxDI9Qvij3qxDgQQLCvitvHXGXH_f9_aHO7vA&s"),

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //       width: 0.5,),
                      // borderRadius: BorderRadius.circular(10),),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, detailsScreen(),);

                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuOE3qnxDI9Qvij3qxDgQQLCvitvHXGXH_f9_aHO7vA&s"),

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //       width: 0.5,),
                      // borderRadius: BorderRadius.circular(10),),
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, detailsScreen(),);

                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuOE3qnxDI9Qvij3qxDgQQLCvitvHXGXH_f9_aHO7vA&s"),

                      ),
                    ),

                  ]




              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0,right: 50.0,),
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.lightBlueAccent, // Set border color
                    width: 3.0), // Set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(30.0)), // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: MaterialButton(
                onPressed: (){
                  navigateTo(context, recommendationScreen(),);
                }, child:Text( "Recommendations"),


              ),
            ),
          ),


        ],
      ),

    );
  }
  Widget _appBarContent(){
    return Container(
      height: 180,
      width:400,
      margin: const EdgeInsets.symmetric(vertical: 40,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _header(),
          const SizedBox(height: 20.0,),

          Container(
            child: Column(
              children: [
                _userInfo(),
              ],
            ),

          ),

        ],

      ),

    );
  }
  Widget _header(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Row(
        children: const [
          Icon(Icons.menu, color: Colors.white,),
        ],
      ),
    );
  }
  Widget _userInfo(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Expanded(
            flex:1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _userPersonalInfo(),
                  const SizedBox(height: 25,),

                ],
              ),
            )),

        Padding(
          padding: const EdgeInsets.fromLTRB(8, 20, 20, 0),
          child: _userAvatar(),
        ),
      ],
    );
  }
  Widget _userAvatar(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.blueGrey, spreadRadius: 3)],
      ),
      child: const CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage("images/Me.jpg"),
      ),
    );
  }
  Widget _userPersonalInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius:20, color: Colors.lightBlue, spreadRadius: 1)],
                ),
                child: const Text(
                  'Mohamed Mokhtar',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset (-0.3,-0.3),
                        color: Colors.black,),
                      Shadow( // bottomRight
                          offset: Offset(0.3, -0.3),
                          color: Colors.black
                      ),
                      Shadow( // topRight
                          offset: Offset(0.3, 0.3),
                          color: Colors.black
                      ),
                      Shadow( // topLeft
                          offset: Offset(-0.3, 0.3),
                          color: Colors.black
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10, ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 5, ),
                  Text(
                    'Cairo, Egypt',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 2,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset (-0.1,-0.1),
                          color: Colors.black,),
                        Shadow( // bottomRight
                            offset: Offset(0.1, -0.1),
                            color: Colors.black
                        ),
                        Shadow( // topRight
                            offset: Offset(0.1, 0.1),
                            color: Colors.black
                        ),
                        Shadow( // topLeft
                            offset: Offset(-0.1, 0.1),
                            color: Colors.black
                        ),
                      ],


                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        // Expanded(
        //   flex: 1,
        //   child: Container(
        //     height: 30,
        //     child: const Center(
        //       child: Text(
        //         'Follow',
        //         style: TextStyle(
        //             color: Color.fromARGB(255, 177, 22, 234),
        //             fontWeight: FontWeight.w500
        //         ),
        //       ),
        //     ),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size){
    var rect = Offset.zero & size;
    Paint paint = Paint();
    Path path = Path();
    paint.shader = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Colors.lightBlueAccent,
        Colors.blue,
      ],
    ).createShader(rect);
    path.lineTo(0, size.height - size.height /  3);
    path.conicTo(size.width / 1.2, size.height/2, size.width,size.height - size.height /  4, 3);
    path.lineTo(size.width, 0);
    canvas.drawShadow(path, Colors.blue, 4, false);
    path.close();
    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint (covariant CustomPainter oldDelegate){
    return true;
  }
}