- 作成順序

---

- models
  -- 1. tarot.dart
  --- モデルファイル
  -- 2. tarot_models.dart
  --- List<Tarot> tarots

---

- datastores
  -- 1. dio_provider.dart // Provider
  --- final dioProvider = Provider((ref) => Dio());
  -- 2. tarots_fetch_datastore_interface.dart
  --- インタフェースファイル
  -- 3. tarots_fetch_datastore.dart
  --- apiへのアクセス、レスポンスをfromJsonして、「models:2 tarot_models.dart」のtarotsに詰めて返す
  -- 4. tarots_fetch_datastore_provider.dart // Provider

---

- repositories
  -- 1. tarots_repository_interface.dart
  --- インタフェースファイル
  -- 2. tarots_repository.dart
  --- 「datastores:3 tarots_fetch_datastore.dart」からの戻りをそのまま返している
  -- 3. tarots_repository_provider.dart // Provider

---

- viewmodels
  -- 1. tarots_view_model.dart
  --- 「repositories:2 tarots_repository.dart」からの戻りをそのまま返している
  -- 2. tarots_view_model_provider.dart // FutureProvider

---

- views
  -- 1. home_screen.dart
