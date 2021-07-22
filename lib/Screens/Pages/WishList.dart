import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 10),
            child:Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.grey),
                            borderRadius: BorderRadius.circular(22),
                            image: DecorationImage(
                                image:AssetImage('assets/images/np.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*.35,
                            child: Padding(
                              padding:  EdgeInsets.only(left:15.0,top: 15,bottom: 15),
                              child: Text(
                                'testsss',
                                style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Text(' \$ 55.55',style: TextStyle(
                              fontSize: 22,
                              color: Colors.orangeAccent
                          )),

                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          )
                        ],
                      )


                    ],
                  )
                ],
              ),
            )
        ),
        Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 10),
            child:Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.grey),
                            borderRadius: BorderRadius.circular(22),
                            image: DecorationImage(
                                image:AssetImage('assets/images/np.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*.35,
                            child: Padding(
                              padding:  EdgeInsets.only(left:15.0,top: 15,bottom: 15),
                              child: Text(
                                'testsss',
                                style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Text(' \$ 55.55',style: TextStyle(
                              fontSize: 22,
                              color: Colors.orangeAccent
                          )),

                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          )
                        ],
                      )


                    ],
                  )
                ],
              ),
            )
        ),
        Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 10),
            child:Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.grey),
                            borderRadius: BorderRadius.circular(22),
                            image: DecorationImage(
                                image:AssetImage('assets/images/np.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*.35,
                            child: Padding(
                              padding:  EdgeInsets.only(left:15.0,top: 15,bottom: 15),
                              child: Text(
                                'testsss',
                                style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Text(' \$ 55.55',style: TextStyle(
                              fontSize: 22,
                              color: Colors.orangeAccent
                          )),

                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          )
                        ],
                      )


                    ],
                  )
                ],
              ),
            )
        ),
        Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 10),
            child:Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.grey),
                            borderRadius: BorderRadius.circular(22),
                            image: DecorationImage(
                                image:AssetImage('assets/images/np.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*.35,
                            child: Padding(
                              padding:  EdgeInsets.only(left:15.0,top: 15,bottom: 15),
                              child: Text(
                                'testsss',
                                style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Text(' \$ 55.55',style: TextStyle(
                              fontSize: 22,
                              color: Colors.orangeAccent
                          )),

                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9,left: 10),
                              child: Container(
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff0E516E),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Center(child: Text('Add to Cart',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white
                                ),)),
                              ),
                            ),
                          )
                        ],
                      )


                    ],
                  )
                ],
              ),
            )
        ),
      ],
    );
  }
}
