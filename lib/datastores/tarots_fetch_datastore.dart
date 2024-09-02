import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_tarot_mvvm/datastores/tarots_fetch_datastore_interface.dart';
import 'package:test_tarot_mvvm/models/tarot.dart';
import 'package:test_tarot_mvvm/models/tarot_models.dart';

class TarotsFetchDataStore implements TarotsFetchDataStoreInterface {
  final Dio dio;

  TarotsFetchDataStore({required this.dio});

  @override
  Future<TarotModels> fetchTarotsData() async {
    var url = 'http://toyohide.work/BrainLog/api/getAllTarot';

    try {
      final response = await dio.post(url);

      final responseData = response.data;

      final List<dynamic> datas = responseData['data'];

      final models = TarotModels();

      for (var data in datas) {
        final model = Tarot.fromJson(data);
        models.tarots.add(model);
      }

      return models;
    } on Exception {
      debugPrint('Fail fetchTarotsData.');

      throw Exception();
    } finally {
      debugPrint('End fetchTarotsData from datastore.');
    }
  }
}
