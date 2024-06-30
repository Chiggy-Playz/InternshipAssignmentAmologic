import 'dart:async';

import 'package:amologic_assignment/extensions.dart';
import 'package:amologic_assignment/pages/add_personal_details.dart';
import 'package:amologic_assignment/widgets/gradient_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String path = '/login';

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  bool passwordObscured = true;
  String username = "";
  String password = "";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1F001C),
            Color(0xFF1C0C1B),
            Color(0xFF19161A),
            Color(0xFF3B0045),
            Color(0xFF171717),
          ],
          stops: [
            0.0,
            0.09,
            0.38,
            0.58,
            1.0,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back!",
                    style: context.textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "welcome back we missed you",
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Username",
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: const Color(0xFFA4A4A4),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GlassContainer.clearGlass(
                    height: 60,
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.10),
                        Colors.white.withOpacity(0.05),
                      ],
                      begin: const Alignment(-1, -5),
                      end: Alignment.bottomRight,
                    ),
                    borderGradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.10),
                        Colors.white.withOpacity(0.1),
                      ],
                      begin: const Alignment(-1, -5),
                      end: Alignment.bottomRight,
                    ),
                    borderWidth: 1.3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          hintText: "Username",
                          hintStyle: context.textTheme.bodyLarge!.copyWith(
                            color: const Color(0xFFA4A4A4),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.person_outline_rounded),
                        ),
                        onSaved: (value) => username = value ?? "",
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: const Color(0xFFA4A4A4),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GlassContainer.clearGlass(
                    height: 60,
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.17),
                        Colors.white.withOpacity(0.18),
                        Colors.white.withOpacity(0.02),
                        Colors.white.withOpacity(0.0),
                      ],
                      stops: const [0.02, 0.18, 0.89, 1.0],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderGradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.10),
                        Colors.white.withOpacity(0.1),
                      ],
                      begin: const Alignment(-1, -5),
                      end: Alignment.bottomRight,
                    ),
                    borderWidth: 1.3,
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: passwordObscured,
                        obscuringCharacter: "*",
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: context.textTheme.bodyLarge!.copyWith(
                            color: const Color(0xFFA4A4A4),
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          prefixIcon: const Icon(Icons.key_outlined),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: IconButton(
                              icon: Icon(passwordObscured
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined),
                              onPressed: () {
                                setState(() {
                                  passwordObscured = !passwordObscured;
                                });
                              },
                            ),
                          ),
                        ),
                        onSaved: (value) => password = value ?? "",
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Forgot Password?",
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: const Color(0xFFA4A4A4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  GradientButton(
                    gradient: const LinearGradient(colors: [
                      Color(0xFF9C3FE4),
                      Color(0xFFC65647),
                    ]),
                    onPressed: signInPressed,
                    height: 60,
                    width: double.maxFinite,
                    borderRadius: 4,
                    child: Text(
                      "Sign In",
                      style: context.textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    // TODO: Add triangle shape rectangles to both side of text in row below
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or continue with",
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: const Color(0xFFA4A4A4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GlassContainerImage(
                        path: "assets/images/google.svg",
                        onTapped: googleLoginPressed,
                        height: 45,
                        width: 60,
                      ),
                      const SizedBox(width: 16),
                      GlassContainerImage(
                        path: "assets/images/apple.svg",
                        onTapped: () => context.showErrorSnackBar(
                          message: "Apple login is not implemented yet",
                        ),
                        height: 45,
                        width: 60,
                      ),
                      const SizedBox(width: 16),
                      GlassContainerImage(
                        path: "assets/images/facebook.svg",
                        onTapped: () => context.showErrorSnackBar(
                          message: "Facebook login is not implemented yet",
                        ),
                        height: 45,
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> googleLoginPressed() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ["email"],
    );

    try {
      final account = await _googleSignIn.signIn();

      if (account == null) {
        if (!mounted) return;
        context.showErrorSnackBar(message: "Not signed in.");
        return;
      }

      final auth = await account.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      if (!mounted) return;
      context.showSnackBar(message: "Welcome back ${account.displayName}");
      context.go(AddPersonalDetailsPage.path);
    } catch (error) {
      debugPrint(error.toString());
      if (!mounted) return;
      context.showErrorSnackBar(message: "Google Sign In Failed!");
      return;
    }
  }

  Future<void> signInPressed() async {
    context.showSnackBar(message: "Not Implemented Yet!");
  }
}

class GlassContainerImage extends StatelessWidget {
  const GlassContainerImage({
    super.key,
    required this.path,
    required this.onTapped,
    required this.height,
    required this.width,
    this.imageSize,
    this.borderRadius,
  });

  final String path;
  final FutureOr<void> Function() onTapped;
  final double height;
  final double width;
  final double? imageSize;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: GlassContainer.clearGlass(
        height: height,
        width: width,
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        child: Center(
          child: SvgPicture.asset(
            path,
            height: imageSize ?? 24,
          ),
        ),
      ),
    );
  }
}
