import 'package:flutter/material.dart';

/// Class abstrak (dasar semua item)
abstract class ListItem {
  Widget buildItem(BuildContext context);
}

/// HeadingItem → teks biru besar
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        heading,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// MessageItem → ada ikon + teks
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildItem(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.message, color: Colors.green),
      title: Text(sender),
      subtitle: Text(body),
    );
  }
}

/// ImageItem → menampilkan gambar + judul
class ImageItem implements ListItem {
  final String title;
  final String imagePath;

  ImageItem(this.title, this.imagePath);

  @override
  Widget buildItem(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

/// LayoutListItem → Scaffold berisi ListView 30 item
class LayoutListItem extends StatelessWidget {
  const LayoutListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = [];

    // Tambah 30 item sesuai pola
    for (int i = 0; i < 30; i++) {
      if (i % 5 == 0) {
        items.add(HeadingItem("Heading $i"));
      } else if (i % 2 == 0) {
        // Setiap genap → ganti gambar sesuai index
        if (i % 3 == 0) {
          items.add(ImageItem("fore", "images/fore.jpg"));
        } else if (i % 3 == 1) {
          items.add(ImageItem("coffe", "images/cf.jpg"));
        } else {
          items.add(ImageItem("skintific", "images/sktfc.jpg"));
        }
      } else {
        // Item ganjil → MessageItem
        items.add(MessageItem("Sender $i", "Message body $i"));
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text("List dengan Berbagai Item")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => items[index].buildItem(context),
      ),
    );
  }
}