
import '../helper/api_class.dart';
import '../models/all_product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data   =  await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName', token: '');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }

    return productsList;

  }
}