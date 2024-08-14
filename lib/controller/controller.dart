import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../api_helper/helper.dart';
import '../modal/modal.dart';

class NewsController extends GetxController {
  ApiHelper apiHelper = ApiHelper();
  late NewsModal newsModal;
  int selectIndex = 0;

  Future<NewsModal> appleMap() async {
    final data = await apiHelper.appleData();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal> teslaMap() async {
    final data = await apiHelper.teslaData();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal> businessMap() async {
    final data = await apiHelper.businessData();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal> headLineMap() async {
    final data = await apiHelper.headLine();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  Future<NewsModal> wallMap() async {
    final data = await apiHelper.wallStreet();
    newsModal = NewsModal.fromMap(data);
    return newsModal;
  }

  void selectedIndex(int index) {
    selectIndex = index;
  }

  void urlLaunch(String url) {
    final Uri uri = Uri.parse(url);
    launchUrl(uri, mode: LaunchMode.inAppWebView);
  }
}
