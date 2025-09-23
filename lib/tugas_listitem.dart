import 'package:flutter/material.dart';

//1.class abstrak//
abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

//2.heading item//
class HeadingItem implements ListItem  {
  final String heading, ; //isi judul
  HeadingItem(this.heading); //constructor

  @override
  Widget buildTitle(BuildContext context) {
   return Text(heading, style: Theme.of(context).textTheme.headlineSmall); //gaya teks besar
  }
  @override
  Widget buildSubtitle(BuildContext context)=> const SizedBox.shrink();
 }
//3.message item//
class MessageItem implements ListItem {
  final String sender; //nama pengirim
  final String produk; //isi pesan
  MessageItem(this.sender, this.produk);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle (BuildContext context) => Text(produk);
  }

  //--widget utama
  class LayoutListitem extends StatelessWidget{
    const LayoutListitem({super.key});

    @override
    Widget build(BuildContext context) {
      //4.data contoh//
      final List<ListItem> items = List<ListItem>.generate(
        30,
        (i) => i % 6 == 0
             ? HeadingItem('Heading ')
             : MessageItem('Sender $i ','produk$i'),
    );
    return Scaffold(
      appBar: AppBar(title: const Text("List dengan berbagai item")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      )
    );
  }
  }