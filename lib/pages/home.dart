import 'package:amologic_assignment/core/extensions.dart';
import 'package:amologic_assignment/core/icons.dart';
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
        forceMaterialTransparency: true,
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
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DoctorCard(
                  doctorName: "Dr Stone",
                  imagePath: "assets/images/doc1.png",
                  services: ["Surgery", "Vaccine"],
                  distance: "10km",
                  availableFor: [PetType.cat, PetType.dog],
                ),
                DoctorCard(
                  doctorName: "Dr Vanessa",
                  imagePath: "assets/images/doc2.png",
                  services: ["Surgery", "Vaccine"],
                  distance: "10km",
                  availableFor: [PetType.cat, PetType.dog],
                ),
              ],
            ),
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

enum PetType { cat, dog }

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.doctorName,
    required this.imagePath,
    required this.services,
    required this.distance,
    required this.availableFor,
  });

  final String doctorName;
  final String imagePath;
  final List<String> services;
  final String distance;
  final List<PetType> availableFor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 130,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: context.textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Services: ${services.join(", ")}",
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFFA4A4A4),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.pin_drop_outlined),
                      const SizedBox(width: 4),
                      Text(
                        distance,
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: const Color(0xFFA4A4A4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: const Text(
                          "Available for",
                          style: TextStyle(
                            color: Color(0xFF50CC98),
                          ),
                        ),
                      ),
                      ...availableFor.map((petType) {
                        switch (petType) {
                          case PetType.cat:
                            return Icon(
                              AmologicIcons.cat,
                              color: context.colorScheme.primaryContainer,
                            );
                          case PetType.dog:
                            return Icon(
                              AmologicIcons.dog,
                              color: context.colorScheme.primaryContainer,
                            );
                        }
                      })
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
