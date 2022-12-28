class Weather {
  int? queryCost;
  double? latitude;
  double? longitude;
  String? resolvedAddress;
  String? address;
  String? timezone;
  int? tzoffset;
  String? description;
  List<Days>? days;
  List<dynamic>? alerts;
  Stations? stations;
  CurrentConditions? currentConditions;

  Weather(
      {this.queryCost,
      this.latitude,
      this.longitude,
      this.resolvedAddress,
      this.address,
      this.timezone,
      this.tzoffset,
      this.description,
      this.days,
      this.alerts,
      this.stations,
      this.currentConditions});

  Weather.fromJson(Map<String, dynamic> json) {
    if (json["queryCost"] is int) {
      queryCost = json["queryCost"];
    }
    if (json["latitude"] is double) {
      latitude = json["latitude"];
    }
    if (json["longitude"] is double) {
      longitude = json["longitude"];
    }
    if (json["resolvedAddress"] is String) {
      resolvedAddress = json["resolvedAddress"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["timezone"] is String) {
      timezone = json["timezone"];
    }
    if (json["tzoffset"] is int) {
      tzoffset = json["tzoffset"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["days"] is List) {
      days = json["days"] == null
          ? null
          : (json["days"] as List).map((e) => Days.fromJson(e)).toList();
    }
    if (json["alerts"] is List) {
      alerts = json["alerts"] ?? [];
    }
    if (json["stations"] is Map) {
      stations =
          json["stations"] == null ? null : Stations.fromJson(json["stations"]);
    }
    if (json["currentConditions"] is Map) {
      currentConditions = json["currentConditions"] == null
          ? null
          : CurrentConditions.fromJson(json["currentConditions"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["queryCost"] = queryCost;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["resolvedAddress"] = resolvedAddress;
    _data["address"] = address;
    _data["timezone"] = timezone;
    _data["tzoffset"] = tzoffset;
    _data["description"] = description;
    if (days != null) {
      _data["days"] = days?.map((e) => e.toJson()).toList();
    }
    if (alerts != null) {
      _data["alerts"] = alerts;
    }
    if (stations != null) {
      _data["stations"] = stations?.toJson();
    }
    if (currentConditions != null) {
      _data["currentConditions"] = currentConditions?.toJson();
    }
    return _data;
  }
}

class CurrentConditions {
  String? datetime;
  int? datetimeEpoch;
  int? temp;
  int? feelslike;
  double? humidity;
  int? dew;
  int? precip;
  int? precipprob;
  int? snow;
  int? snowdepth;
  dynamic preciptype;
  dynamic windgust;
  double? windspeed;
  double? winddir;
  int? pressure;
  int? visibility;
  int? cloudcover;
  int? solarradiation;
  double? solarenergy;
  double? uvindex;
  String? conditions;
  String? icon;
  List<String>? stations;
  String? source;
  String? sunrise;
  int? sunriseEpoch;
  String? sunset;
  int? sunsetEpoch;
  int? moonphase;

  CurrentConditions(
      {this.datetime,
      this.datetimeEpoch,
      this.temp,
      this.feelslike,
      this.humidity,
      this.dew,
      this.precip,
      this.precipprob,
      this.snow,
      this.snowdepth,
      this.preciptype,
      this.windgust,
      this.windspeed,
      this.winddir,
      this.pressure,
      this.visibility,
      this.cloudcover,
      this.solarradiation,
      this.solarenergy,
      this.uvindex,
      this.conditions,
      this.icon,
      this.stations,
      this.source,
      this.sunrise,
      this.sunriseEpoch,
      this.sunset,
      this.sunsetEpoch,
      this.moonphase});

  CurrentConditions.fromJson(Map<String, dynamic> json) {
    if (json["datetime"] is String) {
      datetime = json["datetime"];
    }
    if (json["datetimeEpoch"] is int) {
      datetimeEpoch = json["datetimeEpoch"];
    }
    if (json["temp"] is int) {
      temp = json["temp"];
    }
    if (json["feelslike"] is int) {
      feelslike = json["feelslike"];
    }
    if (json["humidity"] is double) {
      humidity = json["humidity"];
    }
    if (json["dew"] is int) {
      dew = json["dew"];
    }
    if (json["precip"] is int) {
      precip = json["precip"];
    }
    if (json["precipprob"] is int) {
      precipprob = json["precipprob"];
    }
    if (json["snow"] is int) {
      snow = json["snow"];
    }
    if (json["snowdepth"] is int) {
      snowdepth = json["snowdepth"];
    }
    preciptype = json["preciptype"];
    windgust = json["windgust"];
    if (json["windspeed"] is double) {
      windspeed = json["windspeed"];
    }
    if (json["winddir"] is double) {
      winddir = json["winddir"];
    }
    if (json["pressure"] is int) {
      pressure = json["pressure"];
    }
    if (json["visibility"] is int) {
      visibility = json["visibility"];
    }
    if (json["cloudcover"] is int) {
      cloudcover = json["cloudcover"];
    }
    if (json["solarradiation"] is int) {
      solarradiation = json["solarradiation"];
    }
    if (json["solarenergy"] is double) {
      solarenergy = json["solarenergy"];
    }
    if (json["uvindex"] is double) {
      uvindex = json["uvindex"];
    }
    if (json["conditions"] is String) {
      conditions = json["conditions"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    if (json["stations"] is List) {
      stations =
          json["stations"] == null ? null : List<String>.from(json["stations"]);
    }
    if (json["source"] is String) {
      source = json["source"];
    }
    if (json["sunrise"] is String) {
      sunrise = json["sunrise"];
    }
    if (json["sunriseEpoch"] is int) {
      sunriseEpoch = json["sunriseEpoch"];
    }
    if (json["sunset"] is String) {
      sunset = json["sunset"];
    }
    if (json["sunsetEpoch"] is int) {
      sunsetEpoch = json["sunsetEpoch"];
    }
    if (json["moonphase"] is int) {
      moonphase = json["moonphase"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["datetime"] = datetime;
    _data["datetimeEpoch"] = datetimeEpoch;
    _data["temp"] = temp;
    _data["feelslike"] = feelslike;
    _data["humidity"] = humidity;
    _data["dew"] = dew;
    _data["precip"] = precip;
    _data["precipprob"] = precipprob;
    _data["snow"] = snow;
    _data["snowdepth"] = snowdepth;
    _data["preciptype"] = preciptype;
    _data["windgust"] = windgust;
    _data["windspeed"] = windspeed;
    _data["winddir"] = winddir;
    _data["pressure"] = pressure;
    _data["visibility"] = visibility;
    _data["cloudcover"] = cloudcover;
    _data["solarradiation"] = solarradiation;
    _data["solarenergy"] = solarenergy;
    _data["uvindex"] = uvindex;
    _data["conditions"] = conditions;
    _data["icon"] = icon;
    if (stations != null) {
      _data["stations"] = stations;
    }
    _data["source"] = source;
    _data["sunrise"] = sunrise;
    _data["sunriseEpoch"] = sunriseEpoch;
    _data["sunset"] = sunset;
    _data["sunsetEpoch"] = sunsetEpoch;
    _data["moonphase"] = moonphase;
    return _data;
  }
}

class Stations {
  Zsnj? zsnj;

  Stations({this.zsnj});

  Stations.fromJson(Map<String, dynamic> json) {
    if (json["ZSNJ"] is Map) {
      zsnj = json["ZSNJ"] == null ? null : Zsnj.fromJson(json["ZSNJ"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (zsnj != null) {
      _data["ZSNJ"] = zsnj?.toJson();
    }
    return _data;
  }
}

class Zsnj {
  int? distance;
  double? latitude;
  double? longitude;
  int? useCount;
  String? id;
  String? name;
  int? quality;
  int? contribution;

  Zsnj(
      {this.distance,
      this.latitude,
      this.longitude,
      this.useCount,
      this.id,
      this.name,
      this.quality,
      this.contribution});

  Zsnj.fromJson(Map<String, dynamic> json) {
    if (json["distance"] is int) {
      distance = json["distance"];
    }
    if (json["latitude"] is double) {
      latitude = json["latitude"];
    }
    if (json["longitude"] is double) {
      longitude = json["longitude"];
    }
    if (json["useCount"] is int) {
      useCount = json["useCount"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["quality"] is int) {
      quality = json["quality"];
    }
    if (json["contribution"] is int) {
      contribution = json["contribution"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["distance"] = distance;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["useCount"] = useCount;
    _data["id"] = id;
    _data["name"] = name;
    _data["quality"] = quality;
    _data["contribution"] = contribution;
    return _data;
  }
}

class Days {
  String? datetime;
  int? datetimeEpoch;
  double? tempmax;
  double? tempmin;
  double? temp;
  double? feelslikemax;
  double? feelslikemin;
  double? feelslike;
  double? dew;
  double? humidity;
  int? precip;
  int? precipprob;
  int? precipcover;
  dynamic preciptype;
  int? snow;
  int? snowdepth;
  double? windgust;
  double? windspeed;
  double? winddir;
  double? pressure;
  int? cloudcover;
  double? visibility;
  double? solarradiation;
  double? solarenergy;
  double? uvindex;
  double? severerisk;
  String? sunrise;
  int? sunriseEpoch;
  String? sunset;
  int? sunsetEpoch;
  int? moonphase;
  String? conditions;
  String? description;
  String? icon;
  List<String>? stations;
  String? source;
  List<Hours>? hours;

  Days(
      {this.datetime,
      this.datetimeEpoch,
      this.tempmax,
      this.tempmin,
      this.temp,
      this.feelslikemax,
      this.feelslikemin,
      this.feelslike,
      this.dew,
      this.humidity,
      this.precip,
      this.precipprob,
      this.precipcover,
      this.preciptype,
      this.snow,
      this.snowdepth,
      this.windgust,
      this.windspeed,
      this.winddir,
      this.pressure,
      this.cloudcover,
      this.visibility,
      this.solarradiation,
      this.solarenergy,
      this.uvindex,
      this.severerisk,
      this.sunrise,
      this.sunriseEpoch,
      this.sunset,
      this.sunsetEpoch,
      this.moonphase,
      this.conditions,
      this.description,
      this.icon,
      this.stations,
      this.source,
      this.hours});

  Days.fromJson(Map<String, dynamic> json) {
    if (json["datetime"] is String) {
      datetime = json["datetime"];
    }
    if (json["datetimeEpoch"] is int) {
      datetimeEpoch = json["datetimeEpoch"];
    }
    if (json["tempmax"] is double) {
      tempmax = json["tempmax"];
    }
    if (json["tempmin"] is double) {
      tempmin = json["tempmin"];
    }
    if (json["temp"] is double) {
      temp = json["temp"];
    }
    if (json["feelslikemax"] is double) {
      feelslikemax = json["feelslikemax"];
    }
    if (json["feelslikemin"] is double) {
      feelslikemin = json["feelslikemin"];
    }
    if (json["feelslike"] is double) {
      feelslike = json["feelslike"];
    }
    if (json["dew"] is double) {
      dew = json["dew"];
    }
    if (json["humidity"] is double) {
      humidity = json["humidity"];
    }
    if (json["precip"] is int) {
      precip = json["precip"];
    }
    if (json["precipprob"] is int) {
      precipprob = json["precipprob"];
    }
    if (json["precipcover"] is int) {
      precipcover = json["precipcover"];
    }
    preciptype = json["preciptype"];
    if (json["snow"] is int) {
      snow = json["snow"];
    }
    if (json["snowdepth"] is int) {
      snowdepth = json["snowdepth"];
    }
    if (json["windgust"] is double) {
      windgust = json["windgust"];
    }
    if (json["windspeed"] is double) {
      windspeed = json["windspeed"];
    }
    if (json["winddir"] is double) {
      winddir = json["winddir"];
    }
    if (json["pressure"] is double) {
      pressure = json["pressure"];
    }
    if (json["cloudcover"] is int) {
      cloudcover = json["cloudcover"];
    }
    if (json["visibility"] is double) {
      visibility = json["visibility"];
    }
    if (json["solarradiation"] is double) {
      solarradiation = json["solarradiation"];
    }
    if (json["solarenergy"] is double) {
      solarenergy = json["solarenergy"];
    }
    if (json["uvindex"] is double) {
      uvindex = json["uvindex"];
    }
    if (json["severerisk"] is double) {
      severerisk = json["severerisk"];
    }
    if (json["sunrise"] is String) {
      sunrise = json["sunrise"];
    }
    if (json["sunriseEpoch"] is int) {
      sunriseEpoch = json["sunriseEpoch"];
    }
    if (json["sunset"] is String) {
      sunset = json["sunset"];
    }
    if (json["sunsetEpoch"] is int) {
      sunsetEpoch = json["sunsetEpoch"];
    }
    if (json["moonphase"] is int) {
      moonphase = json["moonphase"];
    }
    if (json["conditions"] is String) {
      conditions = json["conditions"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    if (json["stations"] is List) {
      stations =
          json["stations"] == null ? null : List<String>.from(json["stations"]);
    }
    if (json["source"] is String) {
      source = json["source"];
    }
    if (json["hours"] is List) {
      hours = json["hours"] == null
          ? null
          : (json["hours"] as List).map((e) => Hours.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["datetime"] = datetime;
    _data["datetimeEpoch"] = datetimeEpoch;
    _data["tempmax"] = tempmax;
    _data["tempmin"] = tempmin;
    _data["temp"] = temp;
    _data["feelslikemax"] = feelslikemax;
    _data["feelslikemin"] = feelslikemin;
    _data["feelslike"] = feelslike;
    _data["dew"] = dew;
    _data["humidity"] = humidity;
    _data["precip"] = precip;
    _data["precipprob"] = precipprob;
    _data["precipcover"] = precipcover;
    _data["preciptype"] = preciptype;
    _data["snow"] = snow;
    _data["snowdepth"] = snowdepth;
    _data["windgust"] = windgust;
    _data["windspeed"] = windspeed;
    _data["winddir"] = winddir;
    _data["pressure"] = pressure;
    _data["cloudcover"] = cloudcover;
    _data["visibility"] = visibility;
    _data["solarradiation"] = solarradiation;
    _data["solarenergy"] = solarenergy;
    _data["uvindex"] = uvindex;
    _data["severerisk"] = severerisk;
    _data["sunrise"] = sunrise;
    _data["sunriseEpoch"] = sunriseEpoch;
    _data["sunset"] = sunset;
    _data["sunsetEpoch"] = sunsetEpoch;
    _data["moonphase"] = moonphase;
    _data["conditions"] = conditions;
    _data["description"] = description;
    _data["icon"] = icon;
    if (stations != null) {
      _data["stations"] = stations;
    }
    _data["source"] = source;
    if (hours != null) {
      _data["hours"] = hours?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Hours {
  String? datetime;
  int? datetimeEpoch;
  int? temp;
  int? feelslike;
  double? humidity;
  int? dew;
  int? precip;
  int? precipprob;
  int? snow;
  int? snowdepth;
  dynamic preciptype;
  double? windgust;
  double? windspeed;
  int? winddir;
  int? pressure;
  int? visibility;
  int? cloudcover;
  int? solarradiation;
  dynamic solarenergy;
  double? uvindex;
  double? severerisk;
  String? conditions;
  String? icon;
  List<String>? stations;
  String? source;

  Hours(
      {this.datetime,
      this.datetimeEpoch,
      this.temp,
      this.feelslike,
      this.humidity,
      this.dew,
      this.precip,
      this.precipprob,
      this.snow,
      this.snowdepth,
      this.preciptype,
      this.windgust,
      this.windspeed,
      this.winddir,
      this.pressure,
      this.visibility,
      this.cloudcover,
      this.solarradiation,
      this.solarenergy,
      this.uvindex,
      this.severerisk,
      this.conditions,
      this.icon,
      this.stations,
      this.source});

  Hours.fromJson(Map<String, dynamic> json) {
    if (json["datetime"] is String) {
      datetime = json["datetime"];
    }
    if (json["datetimeEpoch"] is int) {
      datetimeEpoch = json["datetimeEpoch"];
    }
    if (json["temp"] is int) {
      temp = json["temp"];
    }
    if (json["feelslike"] is int) {
      feelslike = json["feelslike"];
    }
    if (json["humidity"] is double) {
      humidity = json["humidity"];
    }
    if (json["dew"] is int) {
      dew = json["dew"];
    }
    if (json["precip"] is int) {
      precip = json["precip"];
    }
    if (json["precipprob"] is int) {
      precipprob = json["precipprob"];
    }
    if (json["snow"] is int) {
      snow = json["snow"];
    }
    if (json["snowdepth"] is int) {
      snowdepth = json["snowdepth"];
    }
    preciptype = json["preciptype"];
    if (json["windgust"] is double) {
      windgust = json["windgust"];
    }
    if (json["windspeed"] is double) {
      windspeed = json["windspeed"];
    }
    if (json["winddir"] is int) {
      winddir = json["winddir"];
    }
    if (json["pressure"] is int) {
      pressure = json["pressure"];
    }
    if (json["visibility"] is int) {
      visibility = json["visibility"];
    }
    if (json["cloudcover"] is int) {
      cloudcover = json["cloudcover"];
    }
    if (json["solarradiation"] is int) {
      solarradiation = json["solarradiation"];
    }
    solarenergy = json["solarenergy"];
    if (json["uvindex"] is double) {
      uvindex = json["uvindex"];
    }
    if (json["severerisk"] is double) {
      severerisk = json["severerisk"];
    }
    if (json["conditions"] is String) {
      conditions = json["conditions"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    if (json["stations"] is List) {
      stations =
          json["stations"] == null ? null : List<String>.from(json["stations"]);
    }
    if (json["source"] is String) {
      source = json["source"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["datetime"] = datetime;
    _data["datetimeEpoch"] = datetimeEpoch;
    _data["temp"] = temp;
    _data["feelslike"] = feelslike;
    _data["humidity"] = humidity;
    _data["dew"] = dew;
    _data["precip"] = precip;
    _data["precipprob"] = precipprob;
    _data["snow"] = snow;
    _data["snowdepth"] = snowdepth;
    _data["preciptype"] = preciptype;
    _data["windgust"] = windgust;
    _data["windspeed"] = windspeed;
    _data["winddir"] = winddir;
    _data["pressure"] = pressure;
    _data["visibility"] = visibility;
    _data["cloudcover"] = cloudcover;
    _data["solarradiation"] = solarradiation;
    _data["solarenergy"] = solarenergy;
    _data["uvindex"] = uvindex;
    _data["severerisk"] = severerisk;
    _data["conditions"] = conditions;
    _data["icon"] = icon;
    if (stations != null) {
      _data["stations"] = stations;
    }
    _data["source"] = source;
    return _data;
  }
}
