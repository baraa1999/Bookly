import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connect timeout with ApiSever');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiSever');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiSever');
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Sever was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internt Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error , please try agian');
      default:
        return ServerFailure('Opps There was an Error , please try agin');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
