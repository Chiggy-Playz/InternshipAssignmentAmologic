import 'package:amologic_assignment/extensions.dart';
import 'package:amologic_assignment/widgets/hollow_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

const navigationBarDestinations = [
  NavigationDestination(
    icon: Icon(Icons.home_rounded),
    label: '',
  ),
  NavigationDestination(
    icon: Icon(Icons.favorite_outline),
    label: '',
  ),
  NavigationDestination(
    icon: Icon(Icons.chat_bubble_outline_rounded),
    label: '',
  ),
  NavigationDestination(
    icon: Icon(Icons.person_outline_rounded),
    label: '',
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  static const String path = "/home";

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return HomeShell(navigationShell: navigationShell);
  }
}

class HomeShell extends ConsumerWidget {
  const HomeShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello, Human!"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              backgroundColor: const Color(0xFFEF6497),
              label: const Text("3"),
              child: Icon(
                Icons.local_mall_outlined,
                color: context.colorScheme.primaryContainer,
              ),
            ),
          )
        ],
      ),
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: navigationBarDestinations,
        onDestinationSelected: onNavigationBarClicked,
      ),
    );
  }

  void onNavigationBarClicked(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            UpcomingVaccinationWidget(
              petName: "Catrine",
              vaccinationDate: DateTime.now()
                  .add(const Duration(days: 1))
                  .copyWith(hour: 7, minute: 0),
            ),
            const SizedBox(height: 16),
            TextField(
              style: const TextStyle(
                color: Color(0xFFA3A3A3),
              ),
              decoration: InputDecoration(
                hintText: "Find best vaccination, treatment...",
                hintStyle: const TextStyle(
                  color: Color(0xFFA3A3A3),
                ),
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceChip(
                    selected: true,
                    label: Text(
                      "Vaccine",
                    ),
                  ),
                  SizedBox(width: 8),
                  ChoiceChip(
                    selected: false,
                    label: Text(
                      "Surgery",
                    ),
                  ),
                  SizedBox(width: 8),
                  ChoiceChip(
                    selected: false,
                    label: Text(
                      "SPA & Treatment",
                    ),
                  ),
                  SizedBox(width: 8),
                  ChoiceChip(
                    selected: false,
                    label: Text(
                      "Consultation",
                    ),
                  ),
                ],
              ),
            ),
            // ListView(
            //   shrinkWrap: true,
            //   children: [
            //     Card(
            //       elevation: 0,
            //       child: ,
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class UpcomingVaccinationWidget extends StatelessWidget {
  const UpcomingVaccinationWidget(
      {super.key, required this.petName, required this.vaccinationDate});

  final String petName;
  final DateTime vaccinationDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            ...getEllipses(context),
            getDetails(context),
          ],
        ),
      ),
    );
  }

  List<Widget> getEllipses(BuildContext context) {
    return [
      Positioned(
        top: -61,
        left: -77,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFBCF9FF).withOpacity(0.4),
                const Color(0xFF818AF9).withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
      Positioned(
        top: -12,
        left: 210,
        child: Container(
          width: 275,
          height: 275,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFBCF9FF).withOpacity(0.4),
                const Color(0xFF818AF9).withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    ];
  }

  Widget getDetails(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      const TextSpan(text: "Your "),
                      TextSpan(
                        text: petName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: " will get vaccination "),
                      TextSpan(
                        text: "${vaccinationDate.fromNow()}!",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.12),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "See Details",
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: getPetImage(context),
        ),
      ],
    );
  }

  Widget getPetImage(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/images/home_cat.png",
            width: 200,
          ),
        ),
        const Positioned(
          left: 38,
          bottom: 50,
          child: CircularContainer(
            color: Color(0xFF252525),
            size: 11,
            hollow: false,
          ),
        ),
        const Positioned(
          right: 25,
          bottom: 55,
          child: CircularContainer(
            color: Color(0xFF252525),
            size: 4,
            hollow: false,
          ),
        ),
        const Positioned(
          left: 42,
          bottom: 30,
          child: CircularContainer(
            color: Color(0xFF81ECFF),
            size: 8,
            hollow: true,
          ),
        ),
        const Positioned(
          right: 65,
          top: 32,
          child: CircularContainer(
            color: Color(0xFF81ECFF),
            size: 10,
            hollow: true,
          ),
        ),
        const Positioned(
          right: 5,
          bottom: 40,
          child: CircularContainer(
            color: Color(0xFF81ECFF),
            size: 12,
            hollow: true,
          ),
        ),
      ],
    );
  }
}
