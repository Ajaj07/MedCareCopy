import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/button_row.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/medicine_card.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../utils/constants/colors.dart';

class ShoppingFilter extends StatelessWidget {
  ShoppingFilter({super.key});

  final List<MedicineCard> medicineCard = [
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$2,00',
    ),

    MedicineCard(imageName: 'assets/images/shoppings/medicine_3.png', medicineName: 'Mylanta Strip', price: '\$2,00'),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_4.png',
      medicineName: 'Bufect Strip of 4 Tablets Heat and Pain Relief',
      price: '\$2,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_5.png',
      medicineName: 'BODREX MEDICINE 10S PER STRIP',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_6.png',
      medicineName: 'Paratusin 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16.w,
        toolbarHeight: 48.h,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Padding(
          padding: EdgeInsets.only(right: 16.w), // <-- balances titleSpacing on the right
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new, size: 24.sp, color: MColors.textSecondaryColor),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF9F9F9),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: MColors.thirtyColor),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: SvgPicture.asset('assets/icons/svg/search_outline.svg', height: 20.sp, width: 20.sp),
                      ),
                      prefixIconConstraints: BoxConstraints(minWidth: 44.w, minHeight: 20.h),
                      hintText: 'Search product or store',
                      hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: SvgPicture.asset('assets/icons/svg/cart_outline.svg', height: 24.sp, width: 24.sp),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26.w, top: 15.h, bottom: 15.h),
              child: ButtonRow(
                childList: [
                  Icon(
                    Icons.tune,
                    size: 20.w,
                    //  color: Colors.black
                  ),
                  Text(
                    'Medicine & Treatment',
                    //  style: MTextTheme.labelMedium
                  ),
                  Text(
                    'Milk',
                    // style: MTextTheme.labelMedium
                  ),
                  Text(
                    'Sexual Health',
                    //  style: MTextTheme.labelMedium
                  ),
                  Text('Sexual Health'),
                ],
              ),
            ),
            Expanded(
              // Added padding to align the grid with your left-aligned ButtonRow
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: medicineCard.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Displays 2 items per row
                    // ⬇️ CUSTOMIZE VERTICAL SPACE (Spacing between rows)
                    mainAxisSpacing: 15.h,

                    // ⬇️ CUSTOMIZE HORIZONTAL SPACE (Spacing between columns)
                    crossAxisSpacing: 15.w,

                    // ⬇️ CUSTOMIZE ITEM SHAPE (Width / Height ratio)
                    // Since your card is roughly 178w and 248h, we use that exact ratio
                    // to prevent Flutter from forcing the cards into perfect squares.
                    childAspectRatio: 178 / 248,
                  ),
                  itemBuilder: (context, index) {
                    return medicineCard[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
