import 'package:flutter/material.dart';
import 'Product_screen.dart';
import 'constants.dart';
import 'data_provider/remote_data/dio_helper.dart';
import 'models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    List productsList =
        await DioHelper().getProducts(path: ApiConstants.baseUrl);
    products = Product.convertToProducts(productsList);
    if (mounted) {
  setState(() {
    // Your state change code goes here
  });
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 90),
            Text(
              "E",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Need",
              style: TextStyle(color: Colors.blueGrey),
            ),
            SizedBox(width: 120),
            Icon(Icons.search),
            SizedBox(width: 5),
            Icon(Icons.shopping_cart),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 5, 32, 54),
      ),
       body: products.length == 0
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductScreen(
                                  item: products[index],
                                )));
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    padding: const EdgeInsets.only(bottom: 8),
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          products[index].thumbnail,
                          fit: BoxFit.fitWidth,
                        ),
                          Text.rich(
                         TextSpan(
                         children: <TextSpan>[
      TextSpan(text: products[index].title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24 , color: Colors.white)),
      TextSpan(text: ' ____ ', style: TextStyle(color: Colors.black)),
      TextSpan(text:  "${products[index].price}\$", style: TextStyle(fontStyle: FontStyle.italic , fontSize:22 , color: Color.fromARGB(255, 5, 32, 54))),
    ],
  ),
),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
