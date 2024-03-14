import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses_item.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  final List<AllExpensessItemModel> items = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: '\$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: '\$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expanses',
        date: 'April 2022',
        price: '\$20,129')
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: 14,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeIndex = 0;
                        });
                      },
                      child: AllExpansesItem(
                          isActive: activeIndex == 0,
                          allExpensessItem: items[0]))),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeIndex = 1;
                        });
                      },
                      child: AllExpansesItem(
                          isActive: activeIndex == 1,
                          allExpensessItem: items[1]))),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeIndex = 2;
                        });
                      },
                      child: AllExpansesItem(
                          isActive: activeIndex == 2,
                          allExpensessItem: items[2]))),
            ],
          )
        ],
      ),
    );
  }
}


// Row(
//             children: items
//                 .asMap()
//                 .entries
//                 .map((item) => Expanded(
//                       child: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               activeIndex = item.key;
//                             });
//                           },
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: item.key == 1 ? 8 : 0),
//                             child: AllExpansesItem(
//                                 isActive: activeIndex == item.key,
//                                 allExpensessItem: item.value),
//                           )),
//                     ))
//                 .toList(),
//           )