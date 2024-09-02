import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_tarot_mvvm/datastores/tarots_fetch_datastore_provider.dart';
import 'package:test_tarot_mvvm/repositories/tarots_repository.dart';
import 'package:test_tarot_mvvm/repositories/tarots_repository_interface.dart';

final tarotsRepositoryProvider = Provider<TarotsRepositoryInterface>((ref) =>
    TarotsRepository(dataStore: ref.read(tarotsFetchDataStoreProvider)));
