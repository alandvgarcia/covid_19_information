import 'package:covid19_information_app/components/card_global_information_widget.dart';
import 'package:covid19_information_app/stores/global_information_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GlobalInformationScreen extends StatefulWidget {
  @override
  _GlobalInformationScreenState createState() =>
      _GlobalInformationScreenState();
}

final _globalInformationStore = GlobalInformationStore();

class _GlobalInformationScreenState extends State<GlobalInformationScreen> {
  @override
  void initState() {
    _globalInformationStore.loadGlobalInformation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if(_globalInformationStore.globalInformation != null) {
        return ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Global information",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight
                          .bold),
                      textAlign: TextAlign.left,
                    ),
                    IconButton(
                      iconSize: 32,
                      icon: Icon(Icons.refresh),
                      color: Theme
                          .of(context)
                          .accentColor,
                      onPressed: () {
                        _globalInformationStore.loadGlobalInformation();
                      },
                    )
                  ],
                ),
              ),
              CardGlobalInformation(
                label: "Coronavirus cases",
                value:
                _globalInformationStore.globalInformation.cases.toString() ??
                    "--",
                colors: [Colors.yellow[700], Colors.yellow[900]],
              ),
              CardGlobalInformation(
                label: "Deaths",
                value:
                _globalInformationStore.globalInformation.deaths.toString() ??
                    "--",
                colors: [Colors.red[500], Colors.red[900]],
              ),
              CardGlobalInformation(
                label: "Recovered",
                value: _globalInformationStore.globalInformation.recovered
                    .toString() ??
                    "--",
                colors: [Colors.green[500], Colors.green[900]],
              )
            ],
          ),
        ]);
      }else{
        return Center(child: CircularProgressIndicator(),);
      }
    });
  }
}
