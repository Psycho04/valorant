import 'package:valorant/data/model/maps/location.dart';

class Callouts {
  String? regionName;
  String? superRegionName;
  Location? location;

  Callouts({this.regionName, this.superRegionName, this.location});

  Callouts.fromJson(Map<String, dynamic> json) {
    regionName = json['regionName'];
    superRegionName = json['superRegionName'];
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['regionName'] = regionName;
    data['superRegionName'] = superRegionName;
    if (location != null) {
      data['location'] = location!.toJson();
    }
    return data;
  }
}