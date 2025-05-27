abstract class Failure {
  final String massege;

  Failure({required this.massege});
}

class ServerFailure extends Failure {
  ServerFailure({required super.massege});
}
