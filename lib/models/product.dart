 class Product {
      final String thumbnail;
      final String description;
      final String title;
      final int price;
      final String brand;
      final String category;

      Product(
          {required this.thumbnail, required this.description, required this.title, required this.price, required this.brand, required this.category});

      static List<Product> convertToProducts(List products) {
        List<Product> productsList = [];
        for (var product in products) {
          if(product["thumbnail"]==null||product["description"]==null||product["title"]==null||product["brand"]==null||product["category"]==null)
          {
            continue;
          }
          productsList.add(Product(
              thumbnail: product["thumbnail"],
              description: product["description"],
              title: product["title"],
              price: product["price"],
              brand: product["brand"],
              category: product["category"]));
        }
        return productsList;
      }
    }