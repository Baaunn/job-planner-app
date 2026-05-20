class AppSettingModel {
  final int id;
  final String userName;           // 홈 화면 배너에 띄울 유저 이름
  final int dDaySortType;          // 디데이 정렬 기준 (0: 마감 임박순, 1: 우선순위 높은순)
  final int mainEventFilterType;   // 주요 일정 필터 기준
  final String currentVersion;     // 데이터 마이그레이션 대비용 앱 버전 체크

  AppSettingModel({
    this.id = 1,
    required this.userName,
    required this.dDaySortType,
    required this.mainEventFilterType,
    required this.currentVersion,
  });

  // 로컬 DB 저장용 Map 변환
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userName': userName,
      'dDaySortType': dDaySortType,
      'mainEventFilterType': mainEventFilterType,
      'currentVersion': currentVersion,
    };
  }

  // DB 데이터를 Flutter 객체로 복원
  factory AppSettingModel.fromMap(Map<String, dynamic> map) {
    return AppSettingModel(
      id: map['id'] as int,
      userName: map['userName'] as String,
      dDaySortType: map['dDaySortType'] as int,
      mainEventFilterType: map['mainEventFilterType'] as int,
      currentVersion: map['currentVersion'] as String,
    );
  }
}