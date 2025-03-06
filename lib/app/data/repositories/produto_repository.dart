import 'dart:convert';

import 'package:nexa/app/data/http/exceptions.dart';

import '../models/produto_model.dart';

import '../http/http_client.dart';

abstract class IProdutoRepository {
  Future<List<ProdutoModel>> getProdutos();
}

class ProdutoRepository implements IProdutoRepository {
  final IHttpClient client;

  ProdutoRepository({required this.client});

  @override
  Future<List<ProdutoModel>> getProdutos() async {
    final response = await client.get(url: 'https://dummyjson.com/products');

    if (response.statusCode == 200) {
      print('ok');
      final List<ProdutoModel> produtos = [];
      final body = jsonDecode(response.body);

      body["products"].map((item) {
        final ProdutoModel produto = ProdutoModel.fromMap(item);
        produtos.add(produto);
      }).toList();
      return produtos;
    } else if (response.statusCode == 404) {
      print('not ok');
      throw NotfoundException(message: 'A url informada não é válida.');
    } else {
      print('not ok generic');
      throw Exception('Não foi possível carregar os produtos.');
    }
  }
}
