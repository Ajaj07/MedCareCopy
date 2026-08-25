import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/helpers/device_helpers.dart';

import '../../../common/widgets/Buttons/primary_button.dart';
import '../../../utils/constants/colors.dart';

class PhoneRegistration extends StatefulWidget {
  const PhoneRegistration({super.key});

  @override
  State<PhoneRegistration> createState() => _PhoneRegistrationState();
}

class _PhoneRegistrationState extends State<PhoneRegistration> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.only(
            top: MDeviceHelper.getAppBarHeight() / 2,
            left: 28,
            right: 28,
            bottom: MDeviceHelper.getBottomNavigationBarHeight(),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back Button
                IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),

                const SizedBox(height: 32),

                /// Title
                const Text(
                  'Complete Personal Identification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                const SizedBox(height: 14),

                /// Description
                Text(
                  'You can connect with all healthcare facilities you\'ve previously visited',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: MColors.textSecondaryColor),
                ),

                const SizedBox(height: 14),

                /// Tab Bar
                TabBar(
                  onTap: (index) {
                    setState(() {
                      selectedTab = index;
                    });
                  },
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: MColors.primaryColor,
                  labelColor: MColors.primaryColor,
                  dividerHeight: 2,
                  dividerColor: MColors.secondaryColor,
                  labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Khula'),
                  unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Khula'),
                  tabs: const [
                    Tab(text: "No Phone"),
                    Tab(text: "Email"),
                  ],
                ),

                const SizedBox(height: 24),

                /// Dynamic Field
                selectedTab == 0
                    /// Phone
                    ? PhoneContainer()
                    /// Email
                    : EmailContainer(),

                const SizedBox(height: 26),

                Text(
                  'Full Name',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                SizedBox(height: 12),

                /// Full Name
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: MColors.secondaryColor, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14, bottom: 17.5),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        // labelText: "Full Name",
                        hint: Text(
                          'Enter Your Name',
                          style: TextStyle(
                            fontFamily: 'Khula',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: MColors.textThirtyColor,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 26),
                Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                const SizedBox(height: 12),

                /// Gender
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: MColors.secondaryColor, width: 1),
                  ),
                  child: DropdownButtonFormField<String>(
                    value: null,
                    hint: Text(
                      'Choose your gender',
                      style: TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down, size: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 14),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    items: const [
                      DropdownMenuItem(value: 'male', child: Text('Male')),
                      DropdownMenuItem(value: 'female', child: Text('Female')),
                      DropdownMenuItem(value: 'other', child: Text('Other')),
                    ],
                    onChanged: (value) {
                      // handle selection
                    },
                  ),
                ),
                ////
                const SizedBox(height: 26),
                Text(
                  'Date of birth',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                const SizedBox(height: 12),

                /// Date Of Birth
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: MColors.secondaryColor, width: 1),
                  ),
                  child: TextFormField(
                    readOnly: true,
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      // handle picked date
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your date of birth',
                      hintStyle: const TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                ///
                const SizedBox(height: 26),

                /// check box
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Checkbox(
                      side: BorderSide(
                        color: MColors.secondaryColor, // Your custom border color
                        // width: 2.0, // Your custom border width
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      value: false,
                      onChanged: (val) {},
                    ),
                    Expanded(
                      child: Text(
                        'You agree to receive information and notifications sent by MedCare',
                        style: TextStyle(color: MColors.textSecondaryColor, fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),

                /// Register Button
                Padding(
                  padding: EdgeInsets.only(top: MDeviceHelper.getBottomNavigationBarHeight()),
                  child: MPButton(label: 'Register'),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),

                    TextSpan(
                      text: " Already have an account? ",
                      children: [
                        TextSpan(
                          text: ' Click here to log in?  ',
                          style: TextStyle(color: MColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmailContainer extends StatelessWidget {
  const EmailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: MColors.secondaryColor, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 17.5),
              child: TextFormField(
                decoration: const InputDecoration(
                  // labelText: "Full Name",
                  hint: Text(
                    'Enter Your email',
                    style: TextStyle(
                      fontFamily: 'Khula',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MColors.textThirtyColor,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneContainer extends StatelessWidget {
  const PhoneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No Phone*',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
          ),
          const SizedBox(height: 12),
          Container(
            height: 44,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: MColors.secondaryColor, width: 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // ✅ center vertically
              children: [
                // Country picker section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Pilih',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: MColors.textThirtyColor),
                      ),
                      const Icon(Icons.arrow_drop_down, size: 20),
                    ],
                  ),
                ),

                // Divider
                Container(width: 1, height: 24, color: MColors.secondaryColor),

                // Phone number input
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: MColors.textThirtyColor),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
