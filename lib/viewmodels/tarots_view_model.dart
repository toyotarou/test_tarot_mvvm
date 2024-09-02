import 'package:flutter/material.dart';
import 'package:test_tarot_mvvm/models/tarot_models.dart';
import 'package:test_tarot_mvvm/repositories/tarots_repository_interface.dart';

class TarotsViewModel {
  final TarotsRepositoryInterface repository;

  TarotsViewModel({required this.repository});

  late TarotModels _tarots;

  TarotModels get tarots => _tarots;

  Future fetchTarotsData() async {
    try {
      final data = await repository.fetchTarotsData();
      _tarots = data;
    } on Exception {
      rethrow;
    } finally {
      debugPrint('End fetchTarotsData from view_model.');
    }
  }
}
