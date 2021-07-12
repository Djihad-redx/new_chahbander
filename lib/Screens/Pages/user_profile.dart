import 'package:e_comerce/Models/DeleteAddress.dart';
import 'package:e_comerce/Models/Profile.dart';
import 'package:e_comerce/Screens/Helpers/HeaderAppBare.dart';
import 'package:e_comerce/Screens/Helpers/Loading.dart';
import 'package:e_comerce/Utlitis/API.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AddAddress.dart';

TextEditingController first_name_controller = TextEditingController();
TextEditingController last_name_controller = TextEditingController();
TextEditingController email_controller = TextEditingController();

class Profile extends StatefulWidget {
  BuildContext mycontext;
  Profile({this.mycontext});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserProfile profile = UserProfile();

  DeleteAddress deleteAddress = DeleteAddress();
  bool isloading;

  @override
  void initState() {
    setState(() {
      isloading = true;
    });
    Api.getUserProfileInfo().then((value) {
      profile = value;
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          body: isloading == false
              ? profile == null
                  ? Center(
                      child: Text('Please Login ..'),
                    )
                  :
                  //here the old design
                  SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                        image: DecorationImage(
                                            image: ExactAssetImage(
                                                'assets/images/aa.png')),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .85,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'First Name  ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .85,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1)),
                                    child: TextField(
                                        controller: first_name_controller,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 15,
                                              bottom: 11,
                                              top: 11,
                                              right: 15),
                                        ))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .85,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Last Name  ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .85,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1)),
                                    child: TextField(
                                        controller: last_name_controller,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 15,
                                              bottom: 11,
                                              top: 11,
                                              right: 15),
                                        ))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .85,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email  ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .85,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1)),
                                    child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        controller: email_controller,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 15,
                                              bottom: 11,
                                              top: 11,
                                              right: 15),
                                        ))),
                              ),
                            ),

                            SizedBox(
                              height: MediaQuery.of(context).size.height * .08,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .85,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xff0E516E),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'UPDATE',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: AlertDialog(
                                              title: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0),
                                                child: Text(
                                                  "UPDATE PASSWORD",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              actions: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        //make Api
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10)),
                                                          color:
                                                          Color(0xff0E516E),
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                          'OK',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18),
                                                        )),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20.0))),
                                              insetPadding:
                                                  EdgeInsets.all(10.0),
                                              content: Container(
                                                width: 480,
                                                child: new Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Center(
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'OLD PASSWORD',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0,
                                                              bottom: 5),
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey,
                                                                  width: 1)),
                                                          child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .emailAddress,
                                                              controller:
                                                                  email_controller,
                                                              decoration:
                                                                  new InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                disabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            15,
                                                                        bottom:
                                                                            11,
                                                                        top: 11,
                                                                        right:
                                                                            15),
                                                              ))),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              bottom: 5),
                                                      child: Center(
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'NEW PASSWORD  ',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10.0),
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey,
                                                                  width: 1)),
                                                          child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .emailAddress,
                                                              controller:
                                                                  email_controller,
                                                              decoration:
                                                                  new InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                disabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            15,
                                                                        bottom:
                                                                            11,
                                                                        top: 11,
                                                                        right:
                                                                            15),
                                                              ))),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              bottom: 5),
                                                      child: Center(
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'RE-NEW PASSWORD  ',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10.0),
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey,
                                                                  width: 1)),
                                                          child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .emailAddress,
                                                              controller:
                                                                  email_controller,
                                                              decoration:
                                                                  new InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                disabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            15,
                                                                        bottom:
                                                                            11,
                                                                        top: 11,
                                                                        right:
                                                                            15),
                                                              ))),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ));
                                      },
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .85,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xff0E516E),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'UPDATE PASSWORD',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                            // Container()
                          ],
                        ),
                      ),
                    )
              // SingleChildScrollView(
              //             child: Container(
              //               width: MediaQuery.of(context).size.width,
              //               height: MediaQuery.of(context).size.height,
              //               child: Column(
              //                 children: [
              //                   Container(
              //                     decoration: BoxDecoration(
              //                       borderRadius:
              //                           BorderRadius.all(Radius.circular(10)),
              //                       color: Colors.blue,
              //                     ),
              //                     margin: EdgeInsets.all(4),
              //                     padding: EdgeInsets.all(4),
              //                     width: double.infinity,
              //                     child: Padding(
              //                       padding:
              //                           const EdgeInsets.only(left: 2, right: 2),
              //                       child: Stack(
              //                         children: [
              //                           Container(
              //                             width: MediaQuery.of(context).size.width,
              //                             height: 200,
              //                             decoration: BoxDecoration(
              //                                 borderRadius: BorderRadius.all(
              //                                     Radius.circular(10)),
              //                                 color: Colors.grey.shade100),
              //                             child: Row(
              //                               children: [
              //                                 Padding(
              //                                   padding: const EdgeInsets.fromLTRB(
              //                                       5, 40, 20, 10),
              //                                   child: Column(
              //                                     children: [
              //                                       Container(
              //                                         height: 95,
              //                                         width: 95,
              //                                         decoration: BoxDecoration(
              //                                             shape: BoxShape.circle,
              //                                             color: Colors.white,
              //                                             image: DecorationImage(
              //                                                 image: AssetImage(
              //                                                     'assets/images/aa.png'),
              //                                                 fit: BoxFit
              //                                                     .scaleDown)),
              //                                       ),
              //                                       Padding(
              //                                         padding:
              //                                             const EdgeInsets.only(
              //                                                 top: 17, left: 10),
              //                                         child: Text(
              //                                           profile.data.userInfo.name,
              //                                           style: TextStyle(
              //                                               fontSize: 17,
              //                                               color: Colors.black,
              //                                               fontWeight:
              //                                                   FontWeight.bold),
              //                                         ),
              //                                       )
              //                                     ],
              //                                   ),
              //                                 ),
              //                                 Container(
              //                                   height: 200,
              //                                   child: Column(
              //                                     crossAxisAlignment:
              //                                         CrossAxisAlignment.start,
              //                                     mainAxisAlignment:
              //                                         MainAxisAlignment.center,
              //                                     children: [
              //                                       Padding(
              //                                         padding: const EdgeInsets
              //                                                 .symmetric(
              //                                             vertical: 15.0),
              //                                         child: Row(
              //                                           children: [
              //                                             Padding(
              //                                               padding:
              //                                                   const EdgeInsets
              //                                                           .only(
              //                                                       right: 8.0),
              //                                               child: Text(
              //                                                 "Mobile:",
              //                                                 style: TextStyle(
              //                                                     fontSize: 16,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .bold,
              //                                                     color:
              //                                                         Colors.black),
              //                                               ),
              //                                             ),
              //                                             Text(
              //                                               profile
              //                                                   .data.userInfo.phone
              //                                                   .toString(),
              //                                               style: TextStyle(
              //                                                   fontSize: 14,
              //                                                   color: Colors.grey),
              //                                             ),
              //                                           ],
              //                                         ),
              //                                       ),
              //                                       Row(
              //                                         children: [
              //                                           Padding(
              //                                             padding:
              //                                                 const EdgeInsets.only(
              //                                                     right: 8.0),
              //                                             child: Text(
              //                                               "Email:",
              //                                               style: TextStyle(
              //                                                   fontSize: 16,
              //                                                   fontWeight:
              //                                                       FontWeight.bold,
              //                                                   color:
              //                                                       Colors.black),
              //                                             ),
              //                                           ),
              //                                           Container(
              //                                             width: 200,
              //                                             height: 20,
              //                                             child: Text(
              //                                               profile.data.userInfo
              //                                                   .email,
              //                                               style: TextStyle(
              //                                                   fontSize: 14,
              //                                                   color: Colors.grey),
              //                                               maxLines: 2,
              //                                             ),
              //                                           ),
              //                                         ],
              //                                       ),
              //                                       Padding(
              //                                         padding: const EdgeInsets
              //                                                 .symmetric(
              //                                             vertical: 15.0),
              //                                         child: Row(
              //                                           children: [
              //                                             Padding(
              //                                               padding:
              //                                                   const EdgeInsets
              //                                                           .only(
              //                                                       right: 8.0),
              //                                               child: Text(
              //                                                 "Address:",
              //                                                 style: TextStyle(
              //                                                     fontSize: 16,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .bold,
              //                                                     color:
              //                                                         Colors.black),
              //                                               ),
              //                                             ),
              //                                             profile
              //                                                     .data
              //                                                     .address[0]
              //                                                     .address
              //                                                     .isNotEmpty
              //                                                 ? Text(
              //                                                     profile
              //                                                         .data
              //                                                         .address[0]
              //                                                         .address[0]
              //                                                         .address1,
              //                                                     style: TextStyle(
              //                                                         fontSize: 14,
              //                                                         color: Colors
              //                                                             .grey),
              //                                                   )
              //                                                 : Text(
              //                                                     'there is no Address',
              //                                                     style: TextStyle(
              //                                                         fontSize: 14,
              //                                                         color: Colors
              //                                                             .grey),
              //                                                   )
              //                                           ],
              //                                         ),
              //                                       ),
              //                                     ],
              //                                   ),
              //                                 ),
              //                               ],
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(top: 15.0),
              //                     child: Center(
              //                       child: Row(
              //                         mainAxisAlignment:
              //                             MainAxisAlignment.spaceEvenly,
              //                         children: [
              //                           Text(
              //                             'Address Informations',
              //                             style: TextStyle(
              //                                 fontSize: 20,
              //                                 fontWeight: FontWeight.bold),
              //                           ),
              //                           InkWell(
              //                               onTap: () {
              //                                 Navigator.of(context)
              //                                     .push(MaterialPageRoute(
              //                                   builder: (context) => AddAddress(),
              //                                 ));
              //                               },
              //                               child: Icon(
              //                                 Icons.add_business,
              //                                 color: Colors.green,
              //                                 size: 45,
              //                               ))
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                   Center(
              //                     child: Padding(
              //                       padding:
              //                           const EdgeInsets.symmetric(horizontal: 50),
              //                       child: Divider(
              //                         thickness: 1,
              //                         color: Colors.grey,
              //                       ),
              //                     ),
              //                   ),
              //                   Expanded(
              //                     flex: 1,
              //                     child: profile.data.address[0].address.length != 0
              //                         ? Padding(
              //                             padding: const EdgeInsets.only(
              //                                 right: 20, left: 20),
              //                             child: ListView.builder(
              //                               itemExtent: 130,
              //                               itemCount: profile
              //                                   .data.address[0].address.length,
              //                               itemBuilder: (context, index) =>
              //                                   InkWell(
              //                                 onTap: () {
              //                                   Navigator.of(context)
              //                                       .push(MaterialPageRoute(
              //                                     builder: (context) => AddAddress(
              //                                       details: [
              //                                         profile.data.address[0]
              //                                             .address[index]
              //                                       ],
              //                                     ),
              //                                   ));
              //                                 },
              //                                 // itemBuilder: (context, index) => InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddressDetails(details: [profile.data.address[0].address[index]],),));},
              //                                 child: Container(
              //                                   margin: EdgeInsets.only(bottom: 15),
              //                                   padding: EdgeInsets.all(8),
              //                                   decoration: BoxDecoration(
              //                                     boxShadow: [
              //                                       BoxShadow(
              //                                         color: Colors.grey
              //                                             .withOpacity(0.2),
              //                                         spreadRadius: 5,
              //                                         blurRadius: 7,
              //                                         offset: Offset(0,
              //                                             3), // changes position of shadow
              //                                       ),
              //                                     ],
              //                                     borderRadius: BorderRadius.all(
              //                                         Radius.circular(8)),
              //                                     color: Colors.grey.shade100,
              //                                   ),
              //                                   child: Row(
              //                                     mainAxisAlignment:
              //                                         MainAxisAlignment
              //                                             .spaceBetween,
              //                                     children: [
              //                                       Column(
              //                                           mainAxisAlignment:
              //                                               MainAxisAlignment.start,
              //                                           crossAxisAlignment:
              //                                               CrossAxisAlignment
              //                                                   .start,
              //                                           children: [
              //                                             Padding(
              //                                               padding:
              //                                                   const EdgeInsets
              //                                                       .all(8.0),
              //                                               child: Text(
              //                                                 profile
              //                                                     .data
              //                                                     .address[0]
              //                                                     .address[index]
              //                                                     .address2,
              //                                                 style: TextStyle(
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .bold,
              //                                                     fontSize: 18,
              //                                                     color:
              //                                                         Colors.black),
              //                                               ),
              //                                             ),
              //                                             Padding(
              //                                               padding:
              //                                                   const EdgeInsets
              //                                                           .only(
              //                                                       top: 3,
              //                                                       left: 20),
              //                                               child: Text(
              //                                                 profile
              //                                                     .data
              //                                                     .address[0]
              //                                                     .address[index]
              //                                                     .addressType,
              //                                                 style: TextStyle(
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .bold,
              //                                                     fontSize: 15,
              //                                                     color:
              //                                                         Colors.blue),
              //                                               ),
              //                                             ),
              //                                           ]),
              //                                       Row(
              //                                         children: [
              //                                           Icon(
              //                                             Icons
              //                                                 .info_outline_rounded,
              //                                             color: Colors.blue,
              //                                           ),
              //                                           Padding(
              //                                             padding: const EdgeInsets
              //                                                     .symmetric(
              //                                                 horizontal: 8.0),
              //                                             child: InkWell(
              //                                               onTap: () {
              //                                                 isloading = true;
              //                                                 print(profile.data
              //                                                     .address[0].id);
              //                                                 Api.deleteAddress(
              //                                                         profile
              //                                                             .data
              //                                                             .address[
              //                                                                 0]
              //                                                             .id)
              //                                                     .then(
              //                                                   (value) {
              //                                                     isloading = false;
              //                                                     deleteAddress =
              //                                                         value;
              //                                                     deleteAddress
              //                                                                 .success ==
              //                                                             true
              //                                                         ? setState(
              //                                                             () {
              //                                                             profile
              //                                                                 .data
              //                                                                 .address[
              //                                                                     0]
              //                                                                 .address
              //                                                                 .removeAt(
              //                                                                     index);
              //                                                           })
              //                                                         : print(
              //                                                             'there is error');
              //                                                   },
              //                                                 );
              //                                               },
              //                                               child: Icon(
              //                                                 Icons.delete,
              //                                                 color: Colors.red,
              //                                               ),
              //                                             ),
              //                                           ),
              //                                         ],
              //                                       )
              //                                     ],
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           )
              //                         : Center(
              //                             child: InkWell(
              //                             onTap: () {
              //                               Navigator.of(context)
              //                                   .push(MaterialPageRoute(
              //                                 builder: (context) => AddAddress(),
              //                               ));
              //                             },
              //                             child: Text.rich(
              //                               TextSpan(
              //                                 children: [
              //                                   TextSpan(
              //                                       text:
              //                                           'There is No Addresses yet    ',
              //                                       style: TextStyle(
              //                                           fontWeight: FontWeight.bold,
              //                                           fontSize: 16)),
              //                                   TextSpan(
              //                                     text: 'Add New Address?',
              //                                     style: TextStyle(
              //                                         fontWeight: FontWeight.bold,
              //                                         color: Colors.red,
              //                                         fontSize: 16),
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                           )),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(top: 15.0),
              //                     child: Center(
              //                       child: Text(
              //                         'Other Informations',
              //                         style: TextStyle(
              //                             fontSize: 20,
              //                             fontWeight: FontWeight.bold),
              //                       ),
              //                     ),
              //                   ),
              //                   Center(
              //                     child: Padding(
              //                       padding:
              //                           const EdgeInsets.symmetric(horizontal: 50),
              //                       child: Divider(
              //                         thickness: 1,
              //                         color: Colors.grey,
              //                       ),
              //                     ),
              //                   ),
              //                   Expanded(
              //                     child: Padding(
              //                         padding: const EdgeInsets.only(
              //                             right: 20, left: 20, top: 20),
              //                         child: Column(
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   const EdgeInsets.only(bottom: 8),
              //                               child: Row(
              //                                 mainAxisAlignment:
              //                                     MainAxisAlignment.start,
              //                                 mainAxisSize: MainAxisSize.max,
              //                                 children: [
              //                                   Padding(
              //                                     padding: const EdgeInsets.only(
              //                                         left: 15, right: 15.0),
              //                                     child: Text(
              //                                       "First Name : ",
              //                                       textAlign: TextAlign.left,
              //                                       style: TextStyle(
              //                                           fontSize: 20,
              //                                           fontWeight: FontWeight.bold,
              //                                           color: Colors.black),
              //                                     ),
              //                                   ),
              //                                   Text(
              //                                     profile.data.userInfo.name
              //                                         .toString(),
              //                                     style: TextStyle(
              //                                         fontSize: 20,
              //                                         color: Colors.blue),
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                             Divider(
              //                               color: Colors.grey,
              //                             ),
              //                             Padding(
              //                               padding:
              //                                   const EdgeInsets.only(bottom: 8),
              //                               child: Row(
              //                                 mainAxisAlignment:
              //                                     MainAxisAlignment.start,
              //                                 children: [
              //                                   Padding(
              //                                     padding: const EdgeInsets.only(
              //                                         left: 15, right: 15.0),
              //                                     child: Text(
              //                                       "Last Name:",
              //                                       textAlign: TextAlign.left,
              //                                       style: TextStyle(
              //                                           fontSize: 20,
              //                                           fontWeight: FontWeight.bold,
              //                                           color: Colors.black),
              //                                     ),
              //                                   ),
              //                                   Divider(
              //                                     color: Colors.grey,
              //                                   ),
              //                                   Text(
              //                                     profile.data.userInfo.lastName
              //                                         .toString(),
              //                                     style: TextStyle(
              //                                         fontSize: 20,
              //                                         color: Colors.blue),
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                             Divider(
              //                               color: Colors.grey,
              //                             ),
              //                             Padding(
              //                               padding:
              //                                   const EdgeInsets.only(bottom: 8),
              //                               child: Row(
              //                                 mainAxisAlignment:
              //                                     MainAxisAlignment.start,
              //                                 children: [
              //                                   Padding(
              //                                     padding: const EdgeInsets.only(
              //                                         left: 15, right: 15.0),
              //                                     child: Text(
              //                                       "Type:",
              //                                       style: TextStyle(
              //                                           fontSize: 20,
              //                                           fontWeight: FontWeight.bold,
              //                                           color: Colors.black),
              //                                     ),
              //                                   ),
              //                                   Text(
              //                                     profile.data.userInfo.role
              //                                         .toString(),
              //                                     style: TextStyle(
              //                                         fontSize: 20,
              //                                         color: Colors.blue),
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                             Divider(
              //                               color: Colors.grey,
              //                             ),
              //                             Padding(
              //                               padding:
              //                                   const EdgeInsets.only(bottom: 8),
              //                               child: Row(
              //                                 mainAxisAlignment:
              //                                     MainAxisAlignment.start,
              //                                 children: [
              //                                   Padding(
              //                                     padding: const EdgeInsets.only(
              //                                         left: 15, right: 15.0),
              //                                     child: Text(
              //                                       "Status:",
              //                                       style: TextStyle(
              //                                           fontSize: 20,
              //                                           fontWeight: FontWeight.bold,
              //                                           color: Colors.black),
              //                                     ),
              //                                   ),
              //                                   profile.data.userInfo.active == true
              //                                       ? Text(
              //                                           "Active",
              //                                           style: TextStyle(
              //                                               fontSize: 20,
              //                                               color: Colors.green),
              //                                         )
              //                                       : Text(
              //                                           "Deactive",
              //                                           style: TextStyle(
              //                                               fontSize: 20,
              //                                               color: Colors.red),
              //                                         )
              //                                 ],
              //                               ),
              //                             ),
              //                             Divider(
              //                               color: Colors.grey,
              //                             ),
              //                           ],
              //                         )),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           )
              : Loading()),
    );
  }
}
