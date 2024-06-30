import 'package:amologic_assignment/extensions.dart';
import 'package:amologic_assignment/pages/login.dart';
import 'package:amologic_assignment/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    required this.size,
    required this.color,
    required this.hollow,
  });

  final double size;
  final Color color;
  final bool hollow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(32),
          ),
          width: size,
          height: size,
        ),
        if (hollow)
          Positioned(
            left: size / 4,
            top: size / 4,
            child: Container(
              decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(32),
              ),
              width: size / 2,
              height: size / 2,
            ),
          ),
      ],
    );
  }
}

class SplashScreenPage extends ConsumerWidget {
  const SplashScreenPage({super.key});

  static const String path = '/splash_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.colorScheme.primaryContainer,
      body: FutureBuilder<void>(
          future: loading(ref),
          builder: (context, snapshot) {
            return Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "assets/images/splash_screen_dog.png",
                    width: context.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            IconData(
                              0xe800,
                              fontFamily: 'AmologicIcons',
                              fontPackage: null,
                            ),
                            size: 20,
                          ),
                          const SizedBox(width: 25),
                          Text(
                            'healthypet',
                            style: context.textTheme.titleLarge!.copyWith(
                              color: context.colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: context.textTheme.headlineSmall!
                              .copyWith(fontWeight: FontWeight.w300),
                          children: const [
                            TextSpan(
                              text: 'Helping you\n',
                            ),
                            TextSpan(
                              text: 'To keep ',
                            ),
                            TextSpan(
                              text: 'your bestie\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            TextSpan(
                              text: 'stay healthy!',
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(5, (i) => const SizedBox()),
                    ],
                  ),
                ),
                const Positioned(
                  left: 75,
                  bottom: 256,
                  child: CircularContainer(
                    size: 12,
                    color: Colors.white,
                    hollow: false,
                  ),
                ),
                const Positioned(
                  left: 340,
                  bottom: 265,
                  child: CircularContainer(
                    size: 20,
                    color: Colors.white,
                    hollow: false,
                  ),
                ),
                const Positioned(
                  left: 70,
                  bottom: 220,
                  child: CircularContainer(
                    size: 8,
                    color: Color(0xFF81ECFF),
                    hollow: true,
                  ),
                ),
                const Positioned(
                  left: 335,
                  bottom: 385,
                  child: CircularContainer(
                    size: 8,
                    color: Color(0xFF81ECFF),
                    hollow: true,
                  ),
                ),
              ],
            );
          }),
    );
  }

  Future<void> loading(WidgetRef ref) async {
    var router = ref.read(routerProvider);

    // Do async work here
    await Future.delayed(const Duration(seconds: 3));

    router.go(LoginPage.path);
  }
}
