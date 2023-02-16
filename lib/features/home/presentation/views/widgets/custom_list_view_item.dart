import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../core/utils/constants.dart';

class CustomListViewItem extends StatelessWidget {
  final String imgURl;
  CustomListViewItem({Key? key, required this.imgURl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imgURl,
          fit: BoxFit.fill,
          placeholder: (context , url){
            return const Center(
              child:  CircularProgressIndicator(),
            );
          },
          errorWidget: (context , url ,error){
            return Icon(Icons.error);
          },
        ),
      ),
    );
  }
}
