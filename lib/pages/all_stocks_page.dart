import 'package:flutter/material.dart';
import 'package:flutter_stocks/components/stock_item_component.dart';

class AllStocksPage extends StatelessWidget {
  const AllStocksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stocks'),),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: const [
            SizedBox(height: 16,),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
            StockItemComponent(),
          ],
        ),
      ),
    );
  }
}
