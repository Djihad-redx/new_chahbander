import 'package:e_comerce/Models/ProductCat.dart';
import 'package:e_comerce/Screens/Helpers/HeaderAppBare.dart';
import 'package:e_comerce/Screens/Helpers/Loading.dart';
import 'package:e_comerce/Utlitis/API.dart';
import 'package:e_comerce/Utlitis/General.dart';
import 'package:e_comerce/traslations/Locale_Keys.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_localization/easy_localization.dart';

import 'Add_To_Cart_Page.dart';

class ProductPageCatt extends StatefulWidget {
  String id;
  ProductPageCatt ({this.mycontext,this.id});
  BuildContext mycontext;
  @override
  _ProductPageCattState createState() => _ProductPageCattState();
}

class _ProductPageCattState extends State<ProductPageCatt> {
  ProductPageCat result = new ProductPageCat();
  bool isloading = false;

  @override
  void initState() {

    setState(() {
      isloading = true;
    });
  Api.LoadProduct(widget.id).then((value) {
    result = value;
    print (result);
    setState(() {
      isloading = false;
    });
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: isloading == true? Loading(): result != null? SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  HeaderApp(icon: Icons.arrow_back,c: this.context,Title: 'Products',),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25,bottom: 10),
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 15),
                              child: Icon(
                                Icons.sort,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2,right: 25),
                              child: Text('Sort'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 15),
                              child: Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:2,right: 25),
                              child: Text('Filter'),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 0,left: 15,right: 15),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:(80/135),

                      ),
                        itemBuilder: (BuildContext ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    InkWell(
                                      onTap: (){

                                        Navigator.of(widget.mycontext).push(MaterialPageRoute(builder: (context) => AddToCartPage(mycontext: widget.mycontext,result: result.data.products[index], ),));

                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        height: MediaQuery.of(context).size.height*.22,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200,
                                          image: DecorationImage(
                                              image: result.data.products[index].productPicture.isEmpty ?AssetImage('assets/images/np.png'): NetworkImage(result.data.products[index].productPicture[0].url),
                                              fit: BoxFit.cover
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff0E516E),
                                                  borderRadius: BorderRadius.all(Radius.circular(8))
                                              ),
                                              child: Center(
                                                child: Icon(Icons.favorite_border,color: Colors.white,),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.orangeAccent,
                                                borderRadius: BorderRadius.all(Radius.circular(8))
                                            ),
                                            child: Center(
                                              child: Icon(Icons.add_shopping_cart,color: Colors.white,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('',style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.green,
                                    ),textAlign: TextAlign.left,),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(result.data.products[index].price[0].priceNow.toDouble().toString() + ' USD',style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.red,
                                    ),textAlign: TextAlign.left,),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child:result.data.products[index].price[0].oldPrice.toString() != 0?Text(result.data.products[index].discount.toString(),style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough
                                    ),textAlign: TextAlign.left,):Container(),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(result.data.products[index].name,style: TextStyle(

                                      fontSize: 12,
                                      color: Colors.black,
                                    ),textAlign: TextAlign.left,maxLines:1,),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){

                                    if(General.token != ""){
                                      setState(() {
                                        isloading = true;
                                      });
                                      Api.AddToCart(result.data.products[index].id,1,result.data.products[index].price[0].priceNow,result.data.products[index].price[0].currency.code).then((value) {
                                        print(value);
                                        print('add to server');

                                        setState(() {
                                          isloading = false;
                                        });
                                      });
                                    }else{
                                      General().setProductincart(result.data.products[index], 1).then((value) {
                                        print("added to local");
                                      //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPagep(),));
                                      });
                                    }
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10,right: 10,top: 5),
                                    height: 40,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                    color: Colors.grey.shade200
                                  ),
                                  child: Center(
                                    child: Text('Add to Cart',style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),

            ],
          ),
        ):Container(child: SafeArea(child: Column(
          children: [
            HeaderApp(Title: 'Products',c: this.context,icon: Icons.arrow_back,),
            Center(child: Text('Data yok',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),),
          ],
        )),)
      ),
    );
  }
}
