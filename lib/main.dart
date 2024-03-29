import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_great_places/providers/great_places.dart';
import 'package:flutter_great_places/screens/add_place_screen.dart';
import 'package:flutter_great_places/screens/place_detail_screen.dart';
import 'package:flutter_great_places/screens/places_list_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          hintColor: Colors.amber,
        ),
        home: const PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => const AddPlaceScreen(),
          PlaceDetailScreen.routeName: (ctx) => const PlaceDetailScreen(),
        },
      ),
    );
  }
}
