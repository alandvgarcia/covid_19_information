import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:covid19_information_app/components/card_country_information_widget.dart';
import 'package:covid19_information_app/stores/countries_information_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CountriesInformationScreen extends StatefulWidget {
  @override
  _CountriesInformationScreenState createState() =>
      _CountriesInformationScreenState();
}

final _countriesInformationStore = CountriesInformationStore();

class _CountriesInformationScreenState
    extends State<CountriesInformationScreen> {

  @override
  void initState() {
    _countriesInformationStore.loadCountriesInformation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if(_countriesInformationStore.countriesInformation.isNotEmpty) {
          return ListView.builder(
              itemCount: _countriesInformationStore.countriesInformation
                  .length + 1, itemBuilder: (BuildContext context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AutoSizeText(
                          "Locale information",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                          minFontSize: 18,
                          maxFontSize: 28,
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                        IconButton(
                          iconSize: 32,
                          icon: Icon(Icons.refresh),
                          color: Theme
                              .of(context)
                              .accentColor,
                          onPressed: () {_countriesInformationStore.loadCountriesInformation();},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Card(
                        elevation: 18,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(42.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                icon: Icon(Icons.search, size: 28,),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.cancel),
                                  onPressed: () {},
                                )
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
            var country = _countriesInformationStore
                .countriesInformation[index - 1];
            return CardCountryInformation(country: country,);
          });
        }else{
          return Center(child: CircularProgressIndicator(),);
        }
      }
    );
  }
}
