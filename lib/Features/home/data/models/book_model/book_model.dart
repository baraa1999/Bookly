import 'package:equatable/equatable.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromNo(Map<String, dynamic> json) => BookModel(
        kind: json['kind']?.toString(),
        id: json['id']?.toString(),
        etag: json['etag']?.toString(),
        selfLink: json['selfLink']?.toString(),
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromNo(Map<String, dynamic>.from(json['volumeInfo'])),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromNo(Map<String, dynamic>.from(json['saleInfo'])),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromNo(Map<String, dynamic>.from(json['accessInfo'])),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromNo(Map<String, dynamic>.from(json['searchInfo'])),
      );

  Map<String, dynamic> toNo() => {
        if (kind != null) 'kind': kind,
        if (id != null) 'id': id,
        if (etag != null) 'etag': etag,
        if (selfLink != null) 'selfLink': selfLink,
        if (volumeInfo != null) 'volumeInfo': volumeInfo?.toNo(),
        if (saleInfo != null) 'saleInfo': saleInfo?.toNo(),
        if (accessInfo != null) 'accessInfo': accessInfo?.toNo(),
        if (searchInfo != null) 'searchInfo': searchInfo?.toNo(),
      };

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
      searchInfo,
    ];
  }
}
