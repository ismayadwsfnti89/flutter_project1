import 'package:flutter/material.dart';

//1.class abstrak//
abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

//2.heading item//
class HeadingItem implements ListItem {
  final String heading;  //isi judul
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
  final String body; //isi pesan
  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle (BuildContext context) => Text(body);
  }

  //--widget utama
  class LayoutListitem extends StatelessWidget{
    const LayoutListitem({super.key});

    @override
    Widget build(BuildContext context) {
      //4.data contoh//
      final List<ListItem> items = List<ListItem>.generate(
        20,
        (i) => i % 6 == 0
             ? HeadingItem('Heading $i')
             : MessageItem('Sender $i ','Message body $i'),
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