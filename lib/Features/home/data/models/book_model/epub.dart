import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;

  const Epub({this.isAvailable});

  factory Epub.fromNo(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable']?.toString().contains("true"),
      );

  Map<String, dynamic> toNo() => {
        if (isAvailable != null) 'isAvailable': isAvailable,
      };

  @override
  List<Object?> get props => [isAvailable];
}
