import 'package:apk_test/app/core/index.dart';
import 'package:apk_test/app/features/auth/index.dart';
import 'package:dartz/dartz.dart';

class CleanDataUsecase extends UseCase {
  final AuthRepository repository;

  CleanDataUsecase(this.repository);

  @override
  Future<Either<Failure, void>> call() async {
    final resposne = await repository.cleanData();
    return Right(resposne);
  }
}