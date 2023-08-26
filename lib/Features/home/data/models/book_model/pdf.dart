import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromNo(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable']?.toString().contains("true"),
        acsTokenLink: json['acsTokenLink']?.toString(),
      );

  Map<String, dynamic> toNo() => {
        if (isAvailable != null) 'isAvailable': isAvailable,
        if (acsTokenLink != null) 'acsTokenLink': acsTokenLink,
      };

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
