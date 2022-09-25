import 'package:e_comerce/app/products/resources/constants/detail_utils.dart';
import 'package:e_comerce/app/products/ui/widgets/card.dart';
import 'package:e_comerce/app/products/ui/widgets/line_card.dart';
import 'package:flutter/material.dart';

class ShowPorducts extends StatefulWidget {
  final double? height, listProductHeigth;
  const ShowPorducts({Key? key, this.height, this.listProductHeigth})
      : super(key: key);

  @override
  State<ShowPorducts> createState() => _ShowPorductsState();
}

class _ShowPorductsState extends State<ShowPorducts> {
  bool isLineCard = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height ?? double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            margin: const EdgeInsets.only(right: 15),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              separatorBuilder: (context, index) => Container(
                height: 50,
                width: 1,
                decoration: const BoxDecoration(color: Colors.black26),
              ),
              itemBuilder: (context, index) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () => changeListProducts(index),
                child: Icon(
                  index == 0
                      ? Icons.dashboard_rounded
                      : Icons.calendar_view_day_rounded,
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          AnimatedSwitcher(
            transitionBuilder: (Widget child, Animation<double> animation) =>
                SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
            duration: const Duration(milliseconds: 400),
            child: isLineCard ? listViewProducts() : gridProduct(),
          ),
        ],
      ),
    );
  }

  Widget gridProduct() => SizedBox(
        key: gridKey,
        width: double.infinity,
        height: widget.listProductHeigth ?? double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            ProductCard(),
            ProductCard(),
            ProductCard(),
            ProductCard(),
          ],
        ),
      );

  Widget listViewProducts() => SizedBox(
        key: listKey,
        width: double.infinity,
        height: widget.listProductHeigth ?? double.infinity,
        child: ListView(
          children: const [
            LineCard(),
            LineCard(),
            LineCard(),
            LineCard(),
          ],
        ),
      );

  void changeListProducts(int index) {
    if (index == 0) {
      setState(() {
        isLineCard = false;
      });
      return;
    }
    setState(() {
      isLineCard = true;
    });
  }
}
