// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_alert_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmAlertRequest extends ConfirmAlertRequest {
  @override
  final String title;
  @override
  final String description;
  @override
  final String buttonTitle;

  factory _$ConfirmAlertRequest(
          [void Function(ConfirmAlertRequestBuilder)? updates]) =>
      (new ConfirmAlertRequestBuilder()..update(updates)).build();

  _$ConfirmAlertRequest._(
      {required this.title,
      required this.description,
      required this.buttonTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, 'ConfirmAlertRequest', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, 'ConfirmAlertRequest', 'description');
    BuiltValueNullFieldError.checkNotNull(
        buttonTitle, 'ConfirmAlertRequest', 'buttonTitle');
  }

  @override
  ConfirmAlertRequest rebuild(
          void Function(ConfirmAlertRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmAlertRequestBuilder toBuilder() =>
      new ConfirmAlertRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmAlertRequest &&
        title == other.title &&
        description == other.description &&
        buttonTitle == other.buttonTitle;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, title.hashCode), description.hashCode),
        buttonTitle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfirmAlertRequest')
          ..add('title', title)
          ..add('description', description)
          ..add('buttonTitle', buttonTitle))
        .toString();
  }
}

class ConfirmAlertRequestBuilder
    implements Builder<ConfirmAlertRequest, ConfirmAlertRequestBuilder> {
  _$ConfirmAlertRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _buttonTitle;
  String? get buttonTitle => _$this._buttonTitle;
  set buttonTitle(String? buttonTitle) => _$this._buttonTitle = buttonTitle;

  ConfirmAlertRequestBuilder();

  ConfirmAlertRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _buttonTitle = $v.buttonTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmAlertRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmAlertRequest;
  }

  @override
  void update(void Function(ConfirmAlertRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfirmAlertRequest build() {
    final _$result = _$v ??
        new _$ConfirmAlertRequest._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'ConfirmAlertRequest', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'ConfirmAlertRequest', 'description'),
            buttonTitle: BuiltValueNullFieldError.checkNotNull(
                buttonTitle, 'ConfirmAlertRequest', 'buttonTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
