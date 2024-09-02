import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_tarot_mvvm/datastores/dio_provider.dart';
import 'package:test_tarot_mvvm/datastores/tarots_fetch_datastore.dart';
import 'package:test_tarot_mvvm/datastores/tarots_fetch_datastore_interface.dart';

final tarotsFetchDataStoreProvider = Provider<TarotsFetchDataStoreInterface>(
    (ref) => TarotsFetchDataStore(dio: ref.read(dioProvider)));
