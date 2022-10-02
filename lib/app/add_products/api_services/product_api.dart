import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:menzclub_admin/app/add_products/model/product_model.dart';
import 'package:menzclub_admin/app/constants/api_endpoints.dart';

class ProductApiServices {
  Future<ProductResponse?> adminAddProduct(ProductModel data) async {
    log('reached on product respo');
    try {
      log(' product respo');
      Response response =
          await Dio().post(ApiEndPoints.addProduct, data: data.toJson());
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        log('signup ${response.data.toString()}');

        return ProductResponse.fromJson(response.data);
      } else {
        return ProductResponse.fromJson(response.data);
      }
    } on DioError catch (e) {
      log('message');
      return ProductResponse.fromJson(e.response!.data);
    } catch (e) {
      log(e.toString());
      return ProductResponse(status: false, message: e.toString());
    }
  }
}
