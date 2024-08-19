import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0A0A),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 59, left: 275),
              child: Container(
                width: 91,
                height: 119.24,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xff606060),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xff606060C7),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120.86,
                      height: 31.38,
                      decoration: BoxDecoration(
                        color: Color(0xff0A0A0A),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: _buildOptionRow(
                        image: 'assets/flag.png',
                        text: 'English',
                      ),
                    ),
                    _buildOptionRow(
                      image: 'assets/flag.png',
                      text: 'Yoruba',
                    ),
                    _buildOptionRow(
                      image: 'assets/flag.png',
                      text: 'Igbo',
                    ),
                    _buildOptionRow(
                      image: 'assets/flag.png',
                      text: 'Hausa',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85.76),
              child: Center(
                child: SvgPicture.asset('assets/Group.svg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17, left: 20),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: JumpingDotEffect(
                  activeDotColor: Color(0xffFFF48B),
                  dotColor: Color.fromARGB(51, 171, 153, 255),
                  dotHeight: 8,
                  dotWidth: 8,
                  verticalOffset: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'One App, Multiple Possibilities',
                    style: TextStyle(
                      color: Color(0xffFDFDFD),
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Explore diverse payment solutions tailored just for you. Invest, save, and borrow with ease.',
                    style: TextStyle(
                      color: Color(0xffFDFDFD),
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF48B),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            color: Color(0xff0F0F0F),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF0F0F0F),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Color(0xFFFFF48B),
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xFFFFF48B),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionRow({
    required String image,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.5),
      child: Row(
        children: [
          SizedBox(width: 3),
          Image.asset(
            image,
            height: 14.91,
            width: 14.91,
          ),
          SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontFamily: 'Outfit',
              fontSize: 10.98,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
