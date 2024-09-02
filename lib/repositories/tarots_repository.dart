import 'package:flutter/material.dart';
import 'package:test_tarot_mvvm/datastores/tarots_fetch_datastore_interface.dart';
import 'package:test_tarot_mvvm/models/tarot_models.dart';
import 'package:test_tarot_mvvm/repositories/tarots_repository_interface.dart';

class TarotsRepository implements TarotsRepositoryInterface {
  final TarotsFetchDataStoreInterface dataStore;

  TarotsRepository({required this.dataStore});

  @override
  Future<TarotModels> fetchTarotsData() async {
    try {
      final data = await dataStore.fetchTarotsData();
      return data;
    } on Exception {
      rethrow;
    } finally {
      debugPrint('End fetchTarotsData from repository.');
    }
  }
}
