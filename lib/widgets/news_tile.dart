import 'package:flutter/material.dart';
import 'package:news_app/models/articale_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articale});
  final ArticaleModel articale;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articale.image ??
                'https://img.freepik.com/premium-vector/nothing-here-flat-illustration_418302-77.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          articale.title,
          maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          articale.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 16,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
