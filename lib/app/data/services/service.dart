

import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todolist/app/core/utils/keys.dart';

class StorageSevice extends GetxService {
  late GetStorage _box;

  Future <StorageSevice> init() async{
     _box =GetStorage();
     await _box.writeIfNull(taskKey, []); 
     return this;
  }
}