import 'package:flutter/material.dart';

abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buidSubtitle(BuildContext context);
}
class HeadingItem implements ListItem {
  final String heading; //isi judul
  HeadingItem(this.heading);//constructor

  @override
  Widget buidSubtitle(BuildContext context) {
   return Text(
    heading,
    stlye: Theme.of(context).textTheme.headlineSmall, //gaya teks besar
   );
  }
  @override
  Widget buidSubtitle(BuildContext context)=> const SizedBox.shrink();
 
 }