import 'package:dio/dio.dart';
import 'package:news_app/models/articale_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticaleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://gnews.io/api/v4/top-headlines?apikey=03f64fc77d154b737e14ecc7a4310a2d&lang=ar&category=$category');

      Map<String, dynamic> jsionData = response.data;

      List<dynamic> articals = jsionData['articles'];
      List<ArticaleModel> articalList = [];

      for (var articale in articals) {
        ArticaleModel articaleModel = ArticaleModel.fromJson(articale);
        articalList.add(articaleModel);
      }
      // print(articalList);
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
