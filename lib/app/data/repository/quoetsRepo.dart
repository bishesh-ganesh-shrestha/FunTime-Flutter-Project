import 'package:counter/app/data/model/quotes_response.dart';
import 'package:counter/app/modules/core/config/api.dart';
import 'package:counter/app/modules/core/config/http_config.dart';

class QuoteRepo {
  static Future<QuotesResponse?> getQuotes() async {
    try {
      var res = await Api().get(HttpConfig.quotes, addRequestInterceptor: true);
      var response =
          QuotesResponse.fromMap(res.data[0] as Map<String, dynamic>);
      return response;
    } catch (e) {
      return null;
    }
  }
}
