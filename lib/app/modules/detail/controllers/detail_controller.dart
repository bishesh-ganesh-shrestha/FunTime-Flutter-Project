
import 'package:counter/app/data/model/jokes_response.dart';
import 'package:counter/app/data/repository/jokeRepo.dart';
import 'package:counter/app/modules/core/config/result.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController
  var title = 'Loading'.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getJokesResult();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  var jokesResult = APIResult<JokesResponse?>().obs;

  Future<void> getJokesResult() async {
    var result = await JokeRepo.getJokes();
    jokesResult.value = APIResult.loading();
    if (result != null) {
      jokesResult.value = APIResult.success(result);
    } else {
      jokesResult.value = APIResult.error("Something went wrong");
    }
    if (jokesResult.value.isSuccessful) {
    } else {
      Get.snackbar('Error', jokesResult.value.error ?? 'Something went wrong');
    }
  }
}
