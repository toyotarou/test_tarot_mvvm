import 'package:test_tarot_mvvm/models/tarot_models.dart';

abstract class TarotsRepositoryInterface {
  Future<TarotModels> fetchTarotsData();
}
