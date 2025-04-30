import 'package:flutter/material.dart';
import 'package:meu_app_gabrieloliveira/components/custom_app_bar.dart';
import 'package:meu_app_gabrieloliveira/controllers/navigation_controller.dart';
import 'package:meu_app_gabrieloliveira/styles/app_styles.dart';

class Screen02 extends StatelessWidget {
  const Screen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(nextPage: '/third', showBackButton: false),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/garfield.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.garfieldTopPadding,
              left: AppSpacing.garfieldLeftPadding,
              right: AppSpacing.garfieldRightPadding,
              bottom: AppSpacing.garfieldBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Available P1',
                  style: AppTextStyles.defaultText4,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Topicos Avançados',
                  style: AppTextStyles.defaultText4,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.garfieldSpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(
                        AppColors.buttonOrange,
                      ),
                      onPressed: () {
                        NavigationController.goTo(context, '/third');
                      },
                      child: const Text(
                        'Tela Mickey',
                        style: AppTextStyles.buttonText4,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                      onPressed: () {
                        NavigationController.goTo(context, '/fourth');
                      },
                      child: const Text(
                        'Tela Snoopy',
                        style: AppTextStyles.buttonText4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
