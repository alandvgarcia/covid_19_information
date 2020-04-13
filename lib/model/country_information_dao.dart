class CountryInformationDao {
    int active;
    int cases;
    int casesPerOneMillion;
    String country;
    int critical;
    int deaths;
    int deathsPerOneMillion;
    int recovered;
    int testsPerOneMillion;
    int todayCases;
    int todayDeaths;
    int totalTests;

    CountryInformationDao({this.active, this.cases, this.casesPerOneMillion, this.country, this.critical, this.deaths, this.deathsPerOneMillion, this.recovered, this.testsPerOneMillion, this.todayCases, this.todayDeaths, this.totalTests});

    factory CountryInformationDao.fromJson(Map<String, dynamic> json) {
        return CountryInformationDao(
            active: json['active'], 
            cases: json['cases'], 
            casesPerOneMillion: json['casesPerOneMillion'], 
            country: json['country'], 
            critical: json['critical'], 
            deaths: json['deaths'], 
            deathsPerOneMillion: json['deathsPerOneMillion'], 
            recovered: json['recovered'], 
            testsPerOneMillion: json['testsPerOneMillion'], 
            todayCases: json['todayCases'], 
            todayDeaths: json['todayDeaths'], 
            totalTests: json['totalTests'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['active'] = this.active;
        data['cases'] = this.cases;
        data['casesPerOneMillion'] = this.casesPerOneMillion;
        data['country'] = this.country;
        data['critical'] = this.critical;
        data['deaths'] = this.deaths;
        data['deathsPerOneMillion'] = this.deathsPerOneMillion;
        data['recovered'] = this.recovered;
        data['testsPerOneMillion'] = this.testsPerOneMillion;
        data['todayCases'] = this.todayCases;
        data['todayDeaths'] = this.todayDeaths;
        data['totalTests'] = this.totalTests;
        return data;
    }
}