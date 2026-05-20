class CompanyModel {
  final int? id;             // Primary Key
  final String name;         // 회사명
  final String industry;     // 산업군
  final String? homepageUrl; // 채용 페이지 혹은 공식 홈페이지 링크
  final String? memo;        // 기업 관련 간단한 메모나 특징
  final DateTime createdAt;  // 데이터 등록 시간

  CompanyModel({
    this.id,
    required this.name,
    required this.industry,
    this.homepageUrl,
    this.memo,
    required this.createdAt,
  });

  // 로컬 DB나 JSON 형태로 변환하기 위한 Map 메서드
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'industry': industry,
      'homepageUrl': homepageUrl,
      'memo': memo,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  // DB에서 꺼내온 데이터를 다시 Flutter 객체로 복원하는 팩토리 메서드
  factory CompanyModel.fromMap(Map<String, dynamic> map) {
    return CompanyModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      industry: map['industry'] as String,
      homepageUrl: map['homepageUrl'] as String?,
      memo: map['memo'] as String?,
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }
}