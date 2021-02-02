import 'package:notesapp/core/usecases/base_usecase.dart';
import 'package:notesapp/core/usecases/safe_result.dart';
import 'package:notesapp/features/auth/domain/repositories/auth_repository.dart';

class SendVerificationEmailUseCase extends UseCase<void, void> {
  final AuthRepository _repository;

  SendVerificationEmailUseCase(this._repository);

  @override
  Future<SafeResult<void>> call(params) async {
    try {
      final result = await _repository.sendVerificationEmail();
      return Success(result);
    } catch (e) {
      return Failure(e);
    }
  }
}
