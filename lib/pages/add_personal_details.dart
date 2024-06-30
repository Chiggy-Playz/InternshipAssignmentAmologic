import 'package:amologic_assignment/extensions.dart';
import 'package:amologic_assignment/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddPersonalDetailsPage extends StatelessWidget {
  const AddPersonalDetailsPage({super.key});

  static const String path = '/add_personal_details';

  @override
  Widget build(BuildContext context) {
    return const AddPersonalDetailsView();
  }
}

class AddPersonalDetailsView extends ConsumerStatefulWidget {
  const AddPersonalDetailsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddPersonalDetailsViewState();
}

class _AddPersonalDetailsViewState
    extends ConsumerState<AddPersonalDetailsView> {
  String displayName = '';
  DateTime? dateOfBirth;
  String gender = '';

  final dobController = TextEditingController();

  @override
  void dispose() {
    dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Personal Details',
              style: context.textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Text(
              'Helps to verify your identity during account recovery.',
              style: context.textTheme.bodyLarge!.copyWith(
                color: const Color(0xFFCBC2DB),
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Display Name',
                helperText: "Visible to everyone",
                suffixIcon: Icon(
                  Icons.cancel_outlined,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: dobController,
              decoration: const InputDecoration(
                labelText: 'Date of Birth',
                helperText: "dd/mm/yyyy",
              ),
              readOnly: true,
              onTap: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );

                if (date == null) return;
                if (!mounted) return;

                setState(() {
                  dateOfBirth = date;
                  dobController.text = date.toFormattedString();
                });
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Gender",
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: double.maxFinite,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF4a4458),
                borderRadius: BorderRadius.circular(4),
              ),
              child: InkWell(
                onTap: () {
                  // Validate settings here
                  context.go(HomePage.path);
                },
                child: Center(
                  child: Text(
                    "Agree and Continue",
                    style: context.textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
