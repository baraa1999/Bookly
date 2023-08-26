import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromNo(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet']?.toString(),
      );

  Map<String, dynamic> toNo() => {
        if (textSnippet != null) 'textSnippet': textSnippet,
      };

  @override
  List<Object?> get props => [textSnippet];
}
