import 'dart:convert';

import 'package:covid19_information_app/model/country_information_dao.dart';
import 'package:covid19_information_app/model/global_information_dao.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String url = "https://coronavirus-19-api.herokuapp.com";

  static Future<GlobalInformationDTO> fetchGlobalInformation() async {
    final response = await http.get("$url/all");

    if (response.statusCode == 200) {
      print(response.body);
      return GlobalInformationDTO.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load informations');
    }
  }

  static Future<List<CountryInformationDao>> fetchCountriesInformation() async {
    final response = await http.get("$url/countries");
    if (response.statusCode == 200) {
      print(response.body);
      List jsonDecoded = json.decode((response.body));
      return jsonDecoded
          .map((m) => new CountryInformationDao.fromJson(m))
          .toList();
    } else {
      throw Exception('Failed to load informations');
    }
  }
}
