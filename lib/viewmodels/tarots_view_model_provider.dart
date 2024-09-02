import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_tarot_mvvm/models/tarot_models.dart';
import 'package:test_tarot_mvvm/repositories/tarots_repository_provider.dart';
import 'package:test_tarot_mvvm/viewmodels/tarots_view_model.dart';

final tarotsViewModelNotifierProvider =
    FutureProvider<TarotModels>((ref) async {
  final viewModel =
      TarotsViewModel(repository: ref.read(tarotsRepositoryProvider));

  await viewModel.fetchTarotsData();

  return viewModel.tarots;
});
