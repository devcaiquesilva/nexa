import 'package:flutter/material.dart';
import 'package:nexa/app/data/http/http_client.dart';
import 'package:nexa/app/data/repositories/produto_repository.dart';
import 'package:nexa/app/pages/home/stores/produto_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    store.getProdutos();
  }

  final ProdutoStore store = ProdutoStore(
    repository: ProdutoRepository(client: HttpClient()),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Nexa'),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: Listenable.merge([store.isLoading, store.erro, store.state]),
        builder: (BuildContext context, Widget? child) {
          if (store.isLoading.value == true) {
            return Container();
          } else if (store.erro.value.isNotEmpty) {
            return Center(child: Text(store.erro.value));
          } else if (store.state.value.isEmpty) {
            return Center(child: Text('Nenhum item na lista'));
          } else {
            return ListView.builder(
              itemBuilder: (_, index) {
                final item = store.state.value[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(item.title),
                      Text("Esse item é Avaliado em ${item.rating}/5"),
                      Image.network(
                        item.images[0],
                        height: MediaQuery.of(context).size.height / 4,
                        fit: BoxFit.cover,
                        loadingBuilder:
                            (context, child, loadingProgress) =>
                                loadingProgress == null
                                    ? child
                                    : CircularProgressIndicator(),
                      ),
                      Text(item.description),
                      Text(item.price.toString()),
                    ],
                  ),
                );
              },
              itemCount: store.state.value.length,
            );
          }
        },
      ),
    );
  }
}
