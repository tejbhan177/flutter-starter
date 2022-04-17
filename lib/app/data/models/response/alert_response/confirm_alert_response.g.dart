// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_alert_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmAlertResponse extends ConfirmAlertResponse {
  @override
  final bool confirmed;

  factory _$ConfirmAlertResponse(
          [void Function(ConfirmAlertResponseBuilder)? updates]) =>
      (new ConfirmAlertResponseBuilder()..update(updates)).build();

  _$ConfirmAlertResponse._({required this.confirmed}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        confirmed, 'ConfirmAlertResponse', 'confirmed');
  }

  @override
  ConfirmAlertResponse rebuild(
          void Function(ConfirmAlertResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmAlertResponseBuilder toBuilder() =>
      new ConfirmAlertResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmAlertResponse && confirmed == other.confirmed;
  }

  @override
  int get hashCode {
    return $jf($jc(0, confirmed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfirmAlertResponse')
          ..add('confirmed', confirmed))
        .toString();
  }
}

class ConfirmAlertResponseBuilder
    implements Builder<ConfirmAlertResponse, ConfirmAlertResponseBuilder> {
  _$ConfirmAlertResponse? _$v;

  bool? _confirmed;
  bool? get confirmed => _$this._confirmed;
  set confirmed(bool? confirmed) => _$this._confirmed = confirmed;

  ConfirmAlertResponseBuilder();

  ConfirmAlertResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmed = $v.confirmed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmAlertResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmAlertResponse;
  }

  @override
  void update(void Function(ConfirmAlertResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfirmAlertResponse build() {
    final _$result = _$v ??
        new _$ConfirmAlertResponse._(
            confirmed: BuiltValueNullFieldError.checkNotNull(
                confirmed, 'ConfirmAlertResponse', 'confirmed'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
