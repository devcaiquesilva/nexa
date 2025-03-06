import 'package:flutter/widgets.dart';
import 'package:nexa/app/data/http/exceptions.dart';
import 'package:nexa/app/data/models/produto_model.dart';
import 'package:nexa/app/data/repositories/produto_repository.dart';

class ProdutoStore {
  final IProdutoRepository repository;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<ProdutoModel>> state =
      ValueNotifier<List<ProdutoModel>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  ProdutoStore({required this.repository});

  getProdutos() async {
    isLoading.value = true;
    try {
      final result = await repository.getProdutos();
      state.value = result;
      print('deu certo');
    } on NotfoundException catch (e) {
      print('Caiu na notfoundexception');
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
      print('Caiu na exception');
    }
    isLoading.value = false;
  }
}
