
import 'package:counter/app/data/model/riddles_response.dart';
import 'package:counter/app/modules/core/config/api.dart';
import 'package:counter/app/modules/core/config/http_config.dart';

class RiddleRepo {
  static Future<RiddlesResponse?> getRiddles() async {
    try {
      var res = await Api().get(HttpConfig.riddle, addRequestInterceptor: true);
      var response =
          RiddlesResponse.fromMap(res.data[0] as Map<String, dynamic>);
      return response;
    } catch (e) {
      return null;
    }
  }
}
