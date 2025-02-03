import 'package:counter/app/data/model/jokes_response.dart';
import 'package:counter/app/modules/core/config/api.dart';
import 'package:counter/app/modules/core/config/http_config.dart';


class JokeRepo {
  static Future<JokesResponse?> getJokes() async {
    try {
      var res = await Api().get(HttpConfig.jokes, addRequestInterceptor: true);
      var response = JokesResponse.fromMap(res.data[0] as Map<String, dynamic>);
      return response;
    } catch (e) {
      return null;
    }
  }
}
