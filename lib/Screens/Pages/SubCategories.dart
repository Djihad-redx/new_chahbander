import 'package:e_comerce/Models/HomePageCat.dart';
import 'package:e_comerce/Screens/Helpers/HeaderAppBare.dart';
import 'package:e_comerce/Screens/Helpers/Loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductsCatPage.dart';

class SubCategories extends StatefulWidget {
  SubCategories({this.result, this.subcategories, this.mycontext});
  Categories result;
  List<Child> subcategories;
  BuildContext mycontext;
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {

  int index = 0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: [
          Container(
            height: MediaQuery.of(context).size.height * .20,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              itemCount: widget.result.data.menuCategory.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
               widget.subcategories = widget.result.data.menuCategory[index].children;
                    });
                  },
                  child: Container(

                      padding: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/np.png')
                              ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.grey.shade200),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 13),
                            width: MediaQuery.of(context).size.width *
                                .35,
                            child: Text(
                              widget.result.data.menuCategory[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      )),
                );
              },
            ),
          ),
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 0),
            itemCount: widget.subcategories.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                print(widget.subcategories[index].id.toString());
                  Navigator.of(widget.mycontext).push(MaterialPageRoute(builder: (context) => ProductPageCatt(mycontext: widget.mycontext,id: widget.subcategories[index].id.toString(),),));
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 15, 0),
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/np.png')
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey.shade200),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * .35,
                                  child: Text(
                                    widget.subcategories[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    '$index Items',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 25,
                          ),
                        )
                      ],
                    )),
              );
            },
          ))
            ],
          ),
        ),
      ),
    );
  }
}
