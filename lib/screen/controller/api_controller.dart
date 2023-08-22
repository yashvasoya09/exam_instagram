import 'package:exam_instagram/utills/api_helper.dart';
import 'package:get/get.dart';

class Api_Controller extends GetxController
{
  static final api_controller = Api_Controller._();
  Api_Controller._();
  void loadSearchUser()
  {
    apiHelper.api_Helper.getDataFromSearch();
  }
}