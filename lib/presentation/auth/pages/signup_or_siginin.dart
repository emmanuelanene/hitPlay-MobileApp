import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hitplay/common/helpers/is_dark_mode.dart';
import 'package:hitplay/common/widgets/button/basic_app_button.dart';
import 'package:hitplay/core/configs/assets/app_images.dart';
import 'package:hitplay/core/configs/assets/app_vectors.dart';
import 'package:hitplay/core/configs/theme/app_colors.dart';
import 'package:hitplay/presentation/auth/pages/signin.dart';
import 'package:hitplay/presentation/auth/pages/signup.dart';

import '../../../common/widgets/appbar/app_bar.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),

          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern
            ),
          ),

           Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBg
            )
          ),

          Align(
            alignment: Alignment.center,

            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40
              ),

              child: Column(
                // Main axis of a Column = vertical.
                // This means: center the children vertically within the available space.
                mainAxisAlignment: MainAxisAlignment.center,

                // Cross axis of a Column = horizontal.
                // This means: center the children horizontally inside the column.
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo
                  ),

                  const SizedBox(
                    height: 55,
                  ),

                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),

                  const SizedBox(
                    height: 21,
                  ),

                  const Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(
                    height: 30,
                  ),
            
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context)=> SignupPage()
                              )
                            );
                          },
                          title: 'Register'
                        ),
                      ),

                      const SizedBox(width: 20,),

                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context)=> SigninPage()
                              )
                            );
                          },

                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode ? Colors.white : Colors.black
                            ),
                          )
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}