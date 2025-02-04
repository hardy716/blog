sealed class Result<S, E extends Exception> {
  const Result._();

  T when<T>({
    required T Function(S success) onSuccess,
    required T Function(E error) onFailure,
  });
}

final class Success<S, E extends Exception> extends Result<S, E> {
  final S value;
  const Success(this.value) : super._();

  @override
  T when<T>({
    required T Function(S success) onSuccess,
    required T Function(E error) onFailure,
  }) {
    return onSuccess(value);
  }
}

final class Failure<S, E extends Exception> extends Result<S, E> {
  final E exception;
  const Failure(this.exception) : super._();

  @override
  T when<T>({
    required T Function(S success) onSuccess,
    required T Function(E error) onFailure,
  }) {
    return onFailure(exception);
  }
}