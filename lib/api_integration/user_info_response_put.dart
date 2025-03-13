class UserInfoData {
  final String? name;
  final String? job;
  final String? updatedAt;
  const UserInfoData({this.name, this.job, this.updatedAt});
  UserInfoData copyWith({String? name, String? job, String? updatedAt}) {
    return UserInfoData(
        name: name ?? this.name,
        job: job ?? this.job,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Map<String, Object?> toJson() {
    return {'name': name, 'job': job, 'updatedAt': updatedAt};
  }

  static UserInfoData fromJson(Map<String, Object?> json) {
    return UserInfoData(
        name: json['name'] == null ? null : json['name'] as String,
        job: json['job'] == null ? null : json['job'] as String,
        updatedAt:
            json['updatedAt'] == null ? null : json['updatedAt'] as String);
  }

  @override
  String toString() {
    return '''UserInfoData(
                name:$name,
job:$job,
updatedAt:$updatedAt
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfoData &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.job == job &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, job, updatedAt);
  }
}
