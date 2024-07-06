// ignore_for_file: prefer_typing_uninitialized_variables

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([
    this._message,
    this._prefix,
  ]);

  @override
  String toString() {
    return '$_prefix $_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error during Communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid Request');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message, 'Unauthorized Request');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequesTimeoutException extends AppException {
  RequesTimeoutException([String? message]) : super(message, 'Request Timeout');
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Internal Server Error');
}
