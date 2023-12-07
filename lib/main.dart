import 'package:flutter/material.dart';
import 'profile.dart';
import 'theme.dart';
import 'strings/string.dart';
import 'package:flutter_lab/userData.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedTab = 'profile';

  Color buttonPassiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Theme.of(context).primaryColor),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.input, color: Theme.of(context).primaryColor),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 14),
                  child: Image.asset(
                    'assets/man.png',
                    width: 110,
                    height: 110,
                  ),
                ),
                Text(UserData.name,
                    style: Theme.of(context).textTheme.displayLarge),
                const Padding(padding: EdgeInsets.only(top: 14)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: selectedTab == 'profile'
                                    ? Theme.of(context).secondaryHeaderColor
                                    : buttonPassiveColor,
                                width: selectedTab == 'profile' ? 3 : 1.5),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab =
                                    'profile'; 
                              });
                            },
                            child: Center(
                                child: Text(
                              AppStrings.profileText,
                              style: Theme.of(context).textTheme.bodyLarge,
                            )),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: selectedTab == 'settings'
                                    ? Theme.of(context).secondaryHeaderColor
                                    : buttonPassiveColor,
                                width: selectedTab == 'settings' ? 3 : 1.5),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab =
                                    'settings'; 
                              });
                            },
                            child: Center(
                                child: Text(
                              AppStrings.settingsText,
                              style: Theme.of(context).textTheme.bodyLarge,
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            selectedTab == 'profile' ? const ProfileWidget() : const SettingsWidget(),
          ],
        ),
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text('Это вкладка "Настройки"'),
    );
  }
}
