import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

class AllExpansesItem extends StatelessWidget {
  const AllExpansesItem(
      {super.key, required this.isActive, required this.allExpensessItem});
  final bool isActive;
  final AllExpensessItemModel allExpensessItem;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpansesItem(
            allExpensessItem: allExpensessItem,
          )
        : InActiveExpansesItem(
            allExpensessItem: allExpensessItem,
          );
  }
}

//inactive item =====================
class InActiveExpansesItem extends StatelessWidget {
  const InActiveExpansesItem({super.key, required this.allExpensessItem});
  final AllExpensessItemModel allExpensessItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: 30,
                  child: SvgPicture.asset(allExpensessItem.image),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0XFF064061),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensessItem.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensessItem.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensessItem.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          )
        ],
      ),
    );
  }
}

//active item =====================
class ActiveExpansesItem extends StatelessWidget {
  const ActiveExpansesItem({super.key, required this.allExpensessItem});
  final AllExpensessItemModel allExpensessItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4DB7F2)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircleAvatar(
                  backgroundColor: const Color(0XFF60BEF3),
                  radius: 30,
                  child: SvgPicture.asset(
                    allExpensessItem.image,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensessItem.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensessItem.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensessItem.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
