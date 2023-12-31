import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/homeScreenController.dart';
import '../model/productsModel.dart';
import 'package:newpro/controller/theme_data/theme_data_light.dart';
import 'package:newpro/controller/theme_data/theme_data_dark.dart';
import 'package:newpro/controller/SharedPrefrences/CasheHelper.dart';


class productDetails extends StatefulWidget {
  productsModel product;
  int index;
 productDetails({
   required this.product,
   required this.index,
   super.key});

  @override
  State<productDetails> createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  homeScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
     return
       // GetMaterialApp(
    //     theme: CacheData.getData(key: 'Mode')??false?getThemeDataLight():getThemeDataDark(),
    //  home:
      Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text("Brand  " "${widget.product.products![widget.index].title}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.product.products![widget.index].images!.length,
              itemBuilder: (BuildContext context,int e) => Image.network(widget.product.products![widget.index].images![e],),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(20),
            // color: Colors.grey,
            child: Text("${widget.product.products![widget.index].description}",
            ),),
          Container(
            padding: EdgeInsets.all(20),
            // color: Colors.grey,
            child: Text("The price is : " "${widget.product.products![widget.index].price}" " \$"),),
          Container(
            padding: EdgeInsets.all(20),
            // color: Colors.grey,
            child: Text("The rating is : " "${widget.product.products![widget.index].rating}"),),
          Container(
            padding: EdgeInsets.only(left: 40 , right: 40),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
              MaterialButton(
                minWidth: 150,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
               color: Color(0xff49796B),
                onPressed: (){
                  controller.addToCart(controller.product!.products![widget.index],
                      controller.product!.products![widget.index].price!.toInt());

                },
                child: Row(children: [
                  Text("add to cart   "), Icon(Icons.shopping_cart, color: Colors.white,)
                ],) ,),
              SizedBox(width: 20,),
              MaterialButton(
                minWidth: 150,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                color: Color(0xff49796B),
                onPressed: (){},
                child: Row(children: [
                  Text("buy now   "), Icon(Icons.money, color: Colors.white,)
                ],) ,),

            ],),
          )


        ],
      )
    //  )

    );
  }}
