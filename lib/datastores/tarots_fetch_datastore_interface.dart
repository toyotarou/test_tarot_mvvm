import 'package:test_tarot_mvvm/models/tarot_models.dart';

abstract class TarotsFetchDataStoreInterface {
  Future<TarotModels> fetchTarotsData();
}
