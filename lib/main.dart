import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Interaction Widgets',
      home: const InteractionExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InteractionExample extends StatefulWidget {
  const InteractionExample({super.key});

  @override
  State<InteractionExample> createState() => _InteractionExampleState();
}

class _InteractionExampleState extends State<InteractionExample> {
  String userName = '';
  bool isChecked = false;
  bool isSwitched = false;
  double volume = 0.5;
  String? gender;
  String dropdownValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interactive Widgets Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // TextField
            TextField(
              // controller: ,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => userName = value),
            ),
            const SizedBox(height: 20),

            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Hello, $userName!'))
                );
              },
              child: const Text('Say Hello'),
            ),

            const SizedBox(height: 20),

            // Checkbox
            CheckboxListTile(
              title: const Text('Accept Terms'),
              value: isChecked,
              onChanged: (value) => setState(() => isChecked = value!),
            ),

            // Switch
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: isSwitched,
              onChanged: (value) => setState(() => isSwitched = value),
            ),

            // Radio buttons
            Column(
              children: [
                const Text('Gender:'),
                RadioListTile(
                  title: const Text('Male'),
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) => setState(() => gender = value),
                ),
                RadioListTile(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) => setState(() => gender = value),
                ),
              ],
            ),

            // DropdownButton
            Row(
              children: [
                const Text('Language:'),
                const SizedBox(width: 20),
                DropdownButton<String>(
                  value: dropdownValue,
                  items: ['English', 'French', 'Arabic']
                      .map((lang) => DropdownMenuItem(
                            value: lang,
                            child: Text(lang),
                          ))
                      .toList(),
                  onChanged: (value) => setState(() => dropdownValue = value!),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Slider
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Volume'),
                Slider(
                  value: volume,
                  min: 0,
                  max: 1,
                  onChanged: (value) => setState(() => volume = value),
                ),
              ],
            ),

            // GestureDetector + InkWell
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You tapped the card!')),
                );
              },
              child: InkWell(
                child: Card(
                  color: Colors.lightBlue[50],
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(child: Text('Tap Me!')),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
