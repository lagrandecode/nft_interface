import 'package:flutter/material.dart';
import 'package:nft_app/models/arts.dart';
import 'package:nft_app/models/imageswipe.dart';
import 'package:nft_app/screens/detailpage.dart';

class Creations extends StatelessWidget {
  final List<Arts> list;
  final String storekey;

  Creations({required this.list, required this.storekey, });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
            key: PageStorageKey(storekey),
            itemCount: list.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 4 / 5,
            ),
            itemBuilder: (_, index)=> GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailPage(list[index],),),),
              child: Container(
                height: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Hero(
                  tag: list[index].imgUrl!,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(list[index].imgUrl!, fit: BoxFit.cover,),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
