class ArchiveModel {
  final int? id;             // Primary Key
  final int? companyId;      // Foreign Key
  final String? companyName; // UI 편의용 회사명
  final String title;        // 문항 제목
  final String content;      // 자소서 본문 내용
  final int? maxCharacters;  // 글자 수 제한
  final DateTime updatedAt;  // 최종 수정 시간

  ArchiveModel({
    this.id,
    this.companyId,
    this.companyName,
    required this.title,
    required this.content,
    this.maxCharacters,
    required this.updatedAt,
  });

  // 로컬 DB 저장용 Map 변환
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'companyId': companyId,
      'companyName': companyName,
      'title': title,
      'content': content,
      'maxCharacters': maxCharacters,
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // DB 데이터를 Flutter 객체로 복원
  factory ArchiveModel.fromMap(Map<String, dynamic> map) {
    return ArchiveModel(
      id: map['id'] as int?,
      companyId: map['companyId'] as int?,
      companyName: map['companyName'] as String?,
      title: map['title'] as String,
      content: map['content'] as String,
      maxCharacters: map['maxCharacters'] as int?,
      updatedAt: DateTime.parse(map['updatedAt'] as String),
    );
  }
}