import 'package:flutter/material.dart';
class productList extends StatefulWidget {
  const productList({super.key});

  @override
  State<productList> createState() => _productListState();
}

class _productListState extends State<productList> {
  List<String> productName=['Mango', 'Orange','Grapes','Banana','Cherry','Peach','Mixed Fruit Basket'];
  List<String> productUnit=['KG','Dozen','KG','Dozen','KG','KG','KG'];
  List<int> productPrice= [10,20,30,40,50,60,70];
  List<String> productImage=[
    'https://www.shutterstock.com/shutterstock/photos/2513165307/display_1500/stock-vector-fresh-mango-with-leaves-vector-illustration-vector-illustration-features-a-vibrant-fresh-mango-2513165307.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2516801939/display_1500/stock-photo-orange-isolated-on-white-background-arancia-tarocco-citrus-sinensis-2516801939.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2497453631/display_1500/stock-photo-close-up-of-fresh-blue-grapes-with-water-droplets-on-isolated-white-background-2497453631.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2495497639/display_1500/stock-photo-a-bunch-of-four-bananas-with-the-word-india-printed-on-a-sticker-label-2495497639.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2524955047/display_1500/stock-photo-realistic-illustration-three-cherries-a-few-small-water-dops-on-it-white-background-2524955047.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2469572009/display_1500/stock-photo-peach-with-leaf-isolated-on-white-background-2469572009.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2379070067/display_1500/stock-photo-mix-fruit-in-wood-basket-2379070067.jpg'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        centerTitle: true,
        actions: [
          Center(
            child: Badge(
              textColor: Colors.white,
              label: Text('0'),
              child: Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                   itemCount: productName.length,
                  itemBuilder: (context,index){
                     return Card(
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Image(
                                   height: 100,
                                   width: 100,
                                   image: NetworkImage(productImage[index].toString())),
                               Text(index.toString())
                             ],
                           )
                         ],
                       ),
                     );
                  })
          )
        ],
      ),
    );
  }
}
