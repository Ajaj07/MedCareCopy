import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/medicine_card.dart';

import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../../common/widgets/review/review.dart';
import '../../../../../utils/constants/colors.dart';

///-------------------------[Static texts]------------------------------------
class DescriMediText {
  DescriMediText._();
  static const String proDesc = "Product Description";
  static const String proDescContent =
      ''' Bufect is a reliable and effective medication presented in a convenient strip containing four tablets. Each tablet is meticulously formulated to provide targeted relief from various ailments. With its user-friendly packaging and easy-to-carry design, Bufect ensures quick access to relief whenever and wherever needed. Trust Bufect for fast-acting and dependable relief from discomfort.''';
  static const String benefits1 = 'Provides fast and effective relief from pain and discomfort.';
  static const String benefits2 =
      'Suitable for a wide range of aliments, including headaches, muscle aches, fever and menstrual cramps.';
  static const String benefits3 = 'Each tablet is individually sealed for fresheness and potency';
  static const String composition1 = 'Acetaminophen (500 mg)';
  static const String composition2 = 'Ibuprofen (200 mg)';
  static const String composition3 = 'Caffeine (50 mg)';
  static const String dosage1 =
      '''Adults : Take 1 tablet every 4 to 6 hours as needed. do not exceed 4 tables in 24 hours.''';
  static const String dosage2 =
      '''Children (ages 6-12): Take half a tablet every 4 to 6 hours as needed. Do not exceed 2 tablets in 24 hours ''';
  static const String dosage3 = '''Children under 6 years: Consult a healthcare professional before use ''';

  static const String storageInstructions =
      '''For optimal potency and safety, it is recommended to store this medication in a cool, dry place, away from direct sunlight. Exposure to excessive heat or  moisture may compromise the quality of the product.''';

  static const String storageInstructionsFull =
      '''For optimal potency and safety, it is recommended to store this medication in a cool, dry place, away from direct sunlight. Exposure to excessive heat or moisture may compromise the quality of the product. Additionally, it is important to keep this medication out of reach of children and pets to prevent accidental ingestion and ensure their safety.''';

  static const String sepecialPrecautions1 = '''Do not exceed the recommended dosage.''';

  static const String sepecialPrecautions2 =
      '''Children (ages 6-12): Take half a tablet every 4 to 6 hours as needed. Do not exceed 2 tablets in 24 hours ''';

  static const String sepecialPrecautions3 =
      '''Children under 6 years: Consult a healthcare professional before use ''';
}

///-------------------------[Static texts end ]------------------------------------
class DescriptionMedicine extends StatelessWidget {
  DescriptionMedicine({super.key});

  final List<MedicineCard> medicineCard = [
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 20.sp, color: MColors.textSecondaryColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(
              'assets/icons/svg/share_icon.svg',
              height: 20.8.sp,
              width: 20.8.sp,
              colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///-----------------------------[Section With Padding]-----------------------------
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        // product Image
                        productImage(),
                        // Product Details
                        SizedBox(height: 20),
                        productDetails(),
                        SizedBox(height: 20),
                        // Divider
                        Divider(color: Color(0XFFE3E3E3), thickness: 2),
                        SizedBox(height: 20),
                        //Product Description
                        StartAlignedColumn(
                          children: [
                            Text(DescriMediText.proDesc, style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            Text(
                              DescriMediText.proDescContent,
                              style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        //Benefits
                        StartAlignedColumn(
                          children: [
                            Text('Benefits', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            _buildBulletPoint(DescriMediText.benefits1),
                            _buildBulletPoint(DescriMediText.benefits2),
                            _buildBulletPoint(DescriMediText.benefits3),
                          ],
                        ),
                        SizedBox(height: 20),
                        //Composition
                        StartAlignedColumn(
                          children: [
                            Text('Composition', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            _buildBulletPoint(DescriMediText.composition1),
                            _buildBulletPoint(DescriMediText.composition2),
                            _buildBulletPoint(DescriMediText.composition3),
                          ],
                        ),
                        SizedBox(height: 20),
                        //Dosage
                        StartAlignedColumn(
                          children: [
                            Text('Dosage', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            _buildBulletPoint(DescriMediText.dosage1),
                            _buildBulletPoint(DescriMediText.dosage2),
                            _buildBulletPoint(DescriMediText.benefits3),
                          ],
                        ),
                        SizedBox(height: 20),
                        // storage instruction half
                        StartAlignedColumn(
                          children: [
                            Text('Strorage Instructions', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            Text(
                              DescriMediText.storageInstructions,
                              style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // storage instruction full
                        StartAlignedColumn(
                          children: [
                            Text('Strorage Instructions', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            Text(
                              DescriMediText.storageInstructionsFull,
                              style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        // special Precautions
                        StartAlignedColumn(
                          children: [
                            Text('Special Precautions', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                            SizedBox(height: 7),
                            _buildBulletPoint(DescriMediText.sepecialPrecautions1),
                            _buildBulletPoint(DescriMediText.sepecialPrecautions2),
                            _buildBulletPoint(DescriMediText.sepecialPrecautions3),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  ///-----------------------------[Section Without  right Padding]-----------------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///---------------------------[Review Section]---------------------------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26),
                        child: Text('Review', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                      ),
                      SizedBox(height: 7),

                      // horizontal list view or review card
                      Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: SizedBox(
                          height: 200.h,
                          width: double.infinity,
                          child: ListView.separated(
                            padding: EdgeInsets.all(8),
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return MReviewCard(
                                name: 'Emily Johnson',
                                avatarAsset: 'assets/images/chat/doc_details1.jpg',
                                daysAgo: '1 day ago',
                                rating: 4.0,
                                reviewText:
                                    "My consultation with Dr. Luca Rossi was excellent. He's knowledgeable, attentive, and provid...",
                                onMoreViewTap: () => print('open full review'),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(width: 20),
                            itemCount: 3,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26),
                        child: Text('Related Products', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                      ),
                      SizedBox(height: 7),

                      Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: SizedBox(
                          height: 248.h,
                          width: double.infinity,
                          child: ListView.separated(
                            clipBehavior: Clip.none,
                            separatorBuilder: (context, index) => SizedBox(width: 10.w),
                            itemCount: medicineCard.length,
                            itemBuilder: (context, index) {
                              return medicineCard[index];
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              left: 24,
              right: 24,
              bottom: 20,
              child: SizedBox(height: 45, child: MPButton2(label: 'Add to Cart')),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for bullet rows
  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 6.h, right: 8.w),
          width: 6.w,
          height: 6.h,
          decoration: const BoxDecoration(
            color: MColors.textSecondaryColor, // Adjust color to fit your theme
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: MTextTheme.regular.copyWith(
              color: MColors.textSecondaryColor,
              height: 1.5, // Matches your Figma 150% line height
            ),
          ),
        ),
      ],
    );
  }

  Column productDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bufect Strip of 4 Tablets -Heat and Pain Relief Medicine',
          style: MTextTheme.bold.copyWith(color: Color(0XFF090909), height: 1.5),
        ),
        SizedBox(height: 15),
        Text('Per Strip', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
        SizedBox(height: 20),
        Text('Start form', style: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor)),
        SizedBox(height: 7),
        Text('\$2,00', style: MTextTheme.bold.copyWith(fontSize: 20)),
      ],
    );
  }

  Container productImage() {
    return Container(
      width: double.infinity,
      height: 240,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 23),
      alignment: Alignment.center,
      child: Image.asset('assets/images/shoppings/medicine_4.png', width: 233, height: 185),
    );
  }
}

class StartAlignedColumn extends StatelessWidget {
  final List<Widget> children;

  const StartAlignedColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
