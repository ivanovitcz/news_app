import 'package:get/get.dart';

class InterestController extends GetxController {
  var interest = [].obs;
  var isMax = false.obs;

  void updateInterest(int index) {
    if(interest.contains(index)) {
      interest.remove(index);
      isMax.value = false;
    } else {
      if(interest.length < 3) {
        interest.add(index);
      } else {
        interest.add(index);
        if(interest.length > 3) {
          isMax.value = true;
        }
        interest.remove(index);
      }
      
    }
    print(interest);
  }

}
