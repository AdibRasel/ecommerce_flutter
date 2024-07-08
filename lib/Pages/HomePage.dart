import "package:ecommerce_flutter/widgets/CategoriesWidget.dart";
import "package:ecommerce_flutter/widgets/HomeAppBar.dart";
import "package:ecommerce_flutter/widgets/ItemWidget.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      HomeAppBar(),
      Container(
        // Temporary height
        height: 500,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        child: Column(
          children: [
            // Search Widget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Search here..."),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  size: 27,
                  color: Color(0xFF4C53A5),
                )
              ]),
            ),

            // Categori
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53A5)),
              ),
            ),
            //// Categoris widget
            CategoriesWidget(),

            // Items
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text("Best Selling",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5))),
            ),
            // Items Widgets
            ItemWidget()
          ],
        ),
      )
    ]));
  }
}
