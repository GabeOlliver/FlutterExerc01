import 'package:flutter/material.dart';
import 'package:meu_app_gabrieloliveira/components/custom_app_bar.dart';
import 'package:meu_app_gabrieloliveira/controllers/navigation_controller.dart';
import 'package:meu_app_gabrieloliveira/styles/app_styles.dart';

class Screen04 extends StatelessWidget {
  const Screen04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/snoopy.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Conteúdo principal
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.snoopyTopPadding,
              left: AppSpacing.snoopyLeftPadding,
              right: AppSpacing.snoopyRightPadding,
              bottom: AppSpacing.snoopyBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Available P1',
                  style: AppTextStyles.defaultText2,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Topicos Avançados',
                  style: AppTextStyles.defaultText2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.snoopySpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(
                        AppColors.buttonOrange,
                      ),
                      onPressed: () {
                        NavigationController.goTo(context, '/fifth');
                      },
                      child: const Text(
                        'Tela Garfield 2',
                        style: AppTextStyles.buttonText2,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                      onPressed: () {
                        NavigationController.goTo(context, '/third');
                      },
                      child: const Text(
                        'Tela Mickey',
                        style: AppTextStyles.buttonText2,
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
