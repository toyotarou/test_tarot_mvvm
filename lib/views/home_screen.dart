import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_tarot_mvvm/viewmodels/tarots_view_model_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width),
            Expanded(child: displayTarotsList()),
          ],
        ),
      ),
    );
  }

  ///
  Widget displayTarotsList() {
    return ref.watch(tarotsViewModelNotifierProvider).when(
          data: (data) {
            List<Widget> list = [];

            for (var element in data.tarots) {
              list.add(Text(element.name));
            }

            return SingleChildScrollView(child: Column(children: list));
          },
          error: (error, stackTrace) => const Text('error'),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
