class RecruitmentData {
  String? counterId;
  String? milestoneId;
  int? milestoneThreshold;
  bool? useLevelVpCostOverride;
  int? levelVpCostOverride;
  String? startDate;
  String? endDate;

  RecruitmentData(
      {this.counterId,
      this.milestoneId,
      this.milestoneThreshold,
      this.useLevelVpCostOverride,
      this.levelVpCostOverride,
      this.startDate,
      this.endDate});

  RecruitmentData.fromJson(Map<String, dynamic> json) {
    counterId = json['counterId'];
    milestoneId = json['milestoneId'];
    milestoneThreshold = json['milestoneThreshold'];
    useLevelVpCostOverride = json['useLevelVpCostOverride'];
    levelVpCostOverride = json['levelVpCostOverride'];
    startDate = json['startDate'];
    endDate = json['endDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['counterId'] = counterId;
    data['milestoneId'] = milestoneId;
    data['milestoneThreshold'] = milestoneThreshold;
    data['useLevelVpCostOverride'] = useLevelVpCostOverride;
    data['levelVpCostOverride'] = levelVpCostOverride;
    data['startDate'] = startDate;
    data['endDate'] = endDate;
    return data;
  }
}
