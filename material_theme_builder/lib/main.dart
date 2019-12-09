import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme(
      primary: Color(0xFF6200EE),
      secondary: Color(0xFF018786),
      primaryVariant: Color(0xFF3700B3),
      secondaryVariant: Color(0xFF03DAC6),
      surface: Color(0xFFFFFFFF),
      background: Color(0xFFFFFFFF),
      error: Color(0xFFB00020),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      onError: Color(0xFFFFFFFF),
      onBackground: Color(0xFF000000),
      brightness: Brightness.light,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme,
        primaryColor: Color(0xFF6200EE),
        accentColor: Color(0xFF018786),
        backgroundColor: Color(0xFF6200EE),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF6200EE),
          textTheme: ButtonTextTheme.primary,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: colorScheme.onSecondary),
        dividerColor: Color(0xFF000000),
        textTheme: Typography.englishLike2018.apply(),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchValue = true;
  bool _checkboxValue = true;
  int _radioValue = 0;

  List<bool> _choiceChipValues = [false, false, false];
  List<bool> _filterChipValues = [false, false, false];

  double _sliderValue = .2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build a Material Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Header('BUTTON'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: () {
                    print('RaisedButton was touched');
                  },
                ),
                FlatButton(
                  child: Text('Button'),
                  onPressed: () {
                    print('FlatButton was touched');
                  },
                ),
                OutlineButton(
                  child: Text('Button'),
                  onPressed: () {
                    print('OutlineButton was touched');
                  },
                ),
              ],
            ),
            SizedBox(height: 32),

            // TOP APP BAR
            Header('TOP APP BAR'),
            SizedBox(height: 16),
            AppBar(
              leading: IconButton(
                icon: Icon(Icons.more),
                onPressed: () {
                  print('More was touched');
                },
              ),
              title: Text('Headline 6'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    print('Share was touched');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.bookmark),
                  onPressed: () {
                    print('Bookmark was touched');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('Search was touched');
                  },
                ),
              ],
            ),
            SizedBox(height: 32),

            // SWITCH AND CHECKBOX
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header('SWITCH'),
                      Switch(
                        value: _switchValue,
                        onChanged: (newValue) {
                          setState(() {
                            _switchValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header('CHECKBOX'),
                      Checkbox(
                        value: _checkboxValue,
                        onChanged: (newValue) {
                          setState(() {
                            _checkboxValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),

            // RADIO BUTTON AND ICON Button
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header('RADIO BUTTON'),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: (newValue) {
                              setState(() {
                                _radioValue = newValue;
                              });
                            },
                          ),
                          Radio(
                            value: 1,
                            groupValue: _radioValue,
                            onChanged: (newValue) {
                              setState(() {
                                _radioValue = newValue;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header('ICON BUTTON'),
                      IconButton(
                        icon: Icon(Icons.music_note),
                        onPressed: () {
                          print('RaisedButton was touched');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),

            // LINEAR PROGRESS INDICATOR
            Header('LINEAR PROGRESS INDICATOR'),
            SizedBox(height: 16),
            LinearProgressIndicator(value: .5),
            SizedBox(height: 32),

            // CHIPS
            Header('CHIPS'),
            SizedBox(height: 8),
            Row(
              children: [
                ChoiceChip(
                  label: Text('Body2'),
                  selected: _choiceChipValues[0],
                  onSelected: (newValue) {
                    setState(() {
                      _choiceChipValues[0] = newValue;
                    });
                  },
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('Body2'),
                  selected: _choiceChipValues[1],
                  onSelected: (newValue) {
                    setState(() {
                      _choiceChipValues[1] = newValue;
                    });
                  },
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('Body2'),
                  selected: _choiceChipValues[2],
                  onSelected: (newValue) {
                    setState(() {
                      _choiceChipValues[2] = newValue;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                FilterChip(
                  label: Text('Body2'),
                  selected: _filterChipValues[0],
                  onSelected: (newValue) {
                    setState(() {
                      _filterChipValues[0] = newValue;
                    });
                  },
                ),
                SizedBox(width: 8),
                FilterChip(
                  label: Text('Body2'),
                  selected: _filterChipValues[1],
                  onSelected: (newValue) {
                    setState(() {
                      _filterChipValues[1] = newValue;
                    });
                  },
                ),
                SizedBox(width: 8),
                FilterChip(
                  label: Text('Body2'),
                  selected: _filterChipValues[2],
                  onSelected: (newValue) {
                    setState(() {
                      _filterChipValues[2] = newValue;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 32),

            // LIST
            Header('LIST'),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 0, color: Theme.of(context).colorScheme.onSurface),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.face),
                    title: Text('Subtitle 1'),
                    subtitle: Text('Body 2'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.face),
                    title: Text('Subtitle 1'),
                    subtitle: Text('Body 2'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.face),
                    title: Text('Subtitle 1'),
                    subtitle: Text('Body 2'),
                  )
                ],
              ),
            ),
            SizedBox(height: 32),

            // FAB
            Header('FAB'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton.extended(
                  icon: Icon(Icons.edit),
                  label: Text('BUTTON'),
                  onPressed: () {
                    print('Extended FAB was touched');
                  },
                ),
                FloatingActionButton(
                  child: Icon(Icons.favorite),
                  onPressed: () {
                    print('FAB was touched');
                  },
                ),
                FloatingActionButton(
                  mini: true,
                  child: Icon(Icons.add),
                  onPressed: () {
                    print('Mini FAB was touched');
                  },
                )
              ],
            ),
            SizedBox(height: 32),

            // TEXT FIELD
            Header('TEXT FIELD'),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Label',
                helperText: 'Helper text',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Label',
                helperText: 'Helper text',
              ),
            ),
            SizedBox(height: 32),

            // TABS
            Header('TABS'),
            SizedBox(height: 16),
            DefaultTabController(
              length: 3,
              child: PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: Container(
                  color: Theme.of(context).colorScheme.primary,
                  child: TabBar(
                    indicatorColor: Theme.of(context).colorScheme.onPrimary,
                    tabs: [
                      Tab(text: 'Button'),
                      Tab(text: 'Button'),
                      Tab(text: 'Button'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),

            // SLIDER
            Header('SLIDER'),
            SizedBox(height: 8),
            Slider(
              value: _sliderValue,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header(this.title, {Key key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.overline,
    );
  }
}