import 'package:flutter/material.dart';
import 'package:meu_app_gabrieloliveira/components/custom_app_bar.dart';
import 'package:meu_app_gabrieloliveira/controllers/navigation_controller.dart';
import 'package:meu_app_gabrieloliveira/styles/app_styles.dart';

class Screen03 extends StatelessWidget {
  const Screen03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(nextPage: '/fourth', showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/mickey-mouse.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.mickeyTopPadding,
              left: AppSpacing.mickeyLeftPadding,
              right: AppSpacing.mickeyRightPadding,
              bottom: AppSpacing.mickeyBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Available P1',
                  style: AppTextStyles.defaultText3,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Topicos Avançados',
                  style: AppTextStyles.defaultText3,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.mickeySpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(
                        AppColors.buttonOrange,
                      ),
                      onPressed: () {
                        NavigationController.goTo(context, '/fourth');
                      },
                      child: const Text(
                        'Tela Snoopy',
                        style: AppTextStyles.buttonText3,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                      onPressed: () {
                        NavigationController.goTo(context, '/second');
                      },
                      child: const Text(
                        'Tela Garfield',
                        style: AppTextStyles.buttonText3,
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
