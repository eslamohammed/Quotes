import 'package:nproject/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nproject/core/usecases/usecase.dart';
import 'package:nproject/features/splash/domain/repositories/lang_repository.dart';

class ChangeLangUseCase implements UseCase<bool, String> {
  final LangRepository langRepository;

  ChangeLangUseCase({required this.langRepository});

  @override
  Future<Either<Failure, bool>> call(String langCode) async =>
      await langRepository.changeLang(langCode: langCode);
}
