class EventModel {
  final int? id;             // Primary Key
  final int companyId;       // Foreign Key
  final String companyName;  // UI 편의용 회사명
  final String title;        // 전형 단계 및 내용
  final DateTime dateTime;   // 전형 날짜 및 시간
  final int priority;     // 우선순위
  final String status;       // 전형 상태 ('대기', '합격', '불합격', '진행중')
  final String? memo;        // 면접 링크나 대기실 정보 등 간단한 메모

  EventModel({
    this.id,
    required this.companyId,
    required this.companyName,
    required this.title,
    required this.dateTime,
    required this.priority,
    required this.status,
    this.memo,
  });

  // 로컬 DB 저장용 Map 변환
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'companyId': companyId,
      'companyName': companyName,
      'title': title,
      'dateTime': dateTime.toIso8601String(),
      'priority': priority,
      'status': status,
      'memo': memo,
    };
  }

  // DB 데이터를 Flutter 객체로 복원
  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      id: map['id'] as int?,
      companyId: map['companyId'] as int,
      companyName: map['companyName'] as String,
      title: map['title'] as String,
      dateTime: DateTime.parse(map['dateTime'] as String),
      priority: map['priority'] as int,
      status: map['status'] as String,
      memo: map['memo'] as String?,
    );
  }
}