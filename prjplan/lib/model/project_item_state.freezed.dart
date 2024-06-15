// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  String get projectId => throw _privateConstructorUsedError;
  String get customer => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get start => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get end => throw _privateConstructorUsedError;
  double get earn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call(
      {String projectId,
      String customer,
      @DateTimeConverter() DateTime start,
      @DateTimeConverter() DateTime end,
      double earn});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? customer = null,
    Object? start = null,
    Object? end = null,
    Object? earn = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earn: null == earn
          ? _value.earn
          : earn // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessImplCopyWith<$Res>
    implements $BusinessCopyWith<$Res> {
  factory _$$BusinessImplCopyWith(
          _$BusinessImpl value, $Res Function(_$BusinessImpl) then) =
      __$$BusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      String customer,
      @DateTimeConverter() DateTime start,
      @DateTimeConverter() DateTime end,
      double earn});
}

/// @nodoc
class __$$BusinessImplCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$BusinessImpl>
    implements _$$BusinessImplCopyWith<$Res> {
  __$$BusinessImplCopyWithImpl(
      _$BusinessImpl _value, $Res Function(_$BusinessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? customer = null,
    Object? start = null,
    Object? end = null,
    Object? earn = null,
  }) {
    return _then(_$BusinessImpl(
      null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == earn
          ? _value.earn
          : earn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessImpl implements _Business {
  const _$BusinessImpl(
      this.projectId,
      this.customer,
      @DateTimeConverter() this.start,
      @DateTimeConverter() this.end,
      this.earn);

  factory _$BusinessImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessImplFromJson(json);

  @override
  final String projectId;
  @override
  final String customer;
  @override
  @DateTimeConverter()
  final DateTime start;
  @override
  @DateTimeConverter()
  final DateTime end;
  @override
  final double earn;

  @override
  String toString() {
    return 'Business(projectId: $projectId, customer: $customer, start: $start, end: $end, earn: $earn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.earn, earn) || other.earn == earn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, projectId, customer, start, end, earn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      __$$BusinessImplCopyWithImpl<_$BusinessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessImplToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
      final String projectId,
      final String customer,
      @DateTimeConverter() final DateTime start,
      @DateTimeConverter() final DateTime end,
      final double earn) = _$BusinessImpl;

  factory _Business.fromJson(Map<String, dynamic> json) =
      _$BusinessImpl.fromJson;

  @override
  String get projectId;
  @override
  String get customer;
  @override
  @DateTimeConverter()
  DateTime get start;
  @override
  @DateTimeConverter()
  DateTime get end;
  @override
  double get earn;
  @override
  @JsonKey(ignore: true)
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get projectId => throw _privateConstructorUsedError;
  String get member => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get month => throw _privateConstructorUsedError;
  double get mm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String projectId,
      String member,
      @DateTimeConverter() DateTime month,
      double mm});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? member = null,
    Object? month = null,
    Object? mm = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mm: null == mm
          ? _value.mm
          : mm // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      String member,
      @DateTimeConverter() DateTime month,
      double mm});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? member = null,
    Object? month = null,
    Object? mm = null,
  }) {
    return _then(_$TaskImpl(
      null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == mm
          ? _value.mm
          : mm // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      this.projectId, this.member, @DateTimeConverter() this.month, this.mm);

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String projectId;
  @override
  final String member;
  @override
  @DateTimeConverter()
  final DateTime month;
  @override
  final double mm;

  @override
  String toString() {
    return 'Task(projectId: $projectId, member: $member, month: $month, mm: $mm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.mm, mm) || other.mm == mm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, member, month, mm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(final String projectId, final String member,
      @DateTimeConverter() final DateTime month, final double mm) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get projectId;
  @override
  String get member;
  @override
  @DateTimeConverter()
  DateTime get month;
  @override
  double get mm;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BusinessDetail {
  Business get business => throw _privateConstructorUsedError;
  Map<DateTime, double> get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessDetailCopyWith<BusinessDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDetailCopyWith<$Res> {
  factory $BusinessDetailCopyWith(
          BusinessDetail value, $Res Function(BusinessDetail) then) =
      _$BusinessDetailCopyWithImpl<$Res, BusinessDetail>;
  @useResult
  $Res call({Business business, Map<DateTime, double> detail});

  $BusinessCopyWith<$Res> get business;
}

/// @nodoc
class _$BusinessDetailCopyWithImpl<$Res, $Val extends BusinessDetail>
    implements $BusinessDetailCopyWith<$Res> {
  _$BusinessDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? business = null,
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessCopyWith<$Res> get business {
    return $BusinessCopyWith<$Res>(_value.business, (value) {
      return _then(_value.copyWith(business: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessDetailImplCopyWith<$Res>
    implements $BusinessDetailCopyWith<$Res> {
  factory _$$BusinessDetailImplCopyWith(_$BusinessDetailImpl value,
          $Res Function(_$BusinessDetailImpl) then) =
      __$$BusinessDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Business business, Map<DateTime, double> detail});

  @override
  $BusinessCopyWith<$Res> get business;
}

/// @nodoc
class __$$BusinessDetailImplCopyWithImpl<$Res>
    extends _$BusinessDetailCopyWithImpl<$Res, _$BusinessDetailImpl>
    implements _$$BusinessDetailImplCopyWith<$Res> {
  __$$BusinessDetailImplCopyWithImpl(
      _$BusinessDetailImpl _value, $Res Function(_$BusinessDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? business = null,
    Object? detail = null,
  }) {
    return _then(_$BusinessDetailImpl(
      null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business,
      null == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ));
  }
}

/// @nodoc

class _$BusinessDetailImpl implements _BusinessDetail {
  const _$BusinessDetailImpl(this.business, final Map<DateTime, double> detail)
      : _detail = detail;

  @override
  final Business business;
  final Map<DateTime, double> _detail;
  @override
  Map<DateTime, double> get detail {
    if (_detail is EqualUnmodifiableMapView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_detail);
  }

  @override
  String toString() {
    return 'BusinessDetail(business: $business, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDetailImpl &&
            (identical(other.business, business) ||
                other.business == business) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, business, const DeepCollectionEquality().hash(_detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDetailImplCopyWith<_$BusinessDetailImpl> get copyWith =>
      __$$BusinessDetailImplCopyWithImpl<_$BusinessDetailImpl>(
          this, _$identity);
}

abstract class _BusinessDetail implements BusinessDetail {
  const factory _BusinessDetail(
          final Business business, final Map<DateTime, double> detail) =
      _$BusinessDetailImpl;

  @override
  Business get business;
  @override
  Map<DateTime, double> get detail;
  @override
  @JsonKey(ignore: true)
  _$$BusinessDetailImplCopyWith<_$BusinessDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemberDetail {
  List<Task> get filterdTasks => throw _privateConstructorUsedError;
  Map<DateTime, double> get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberDetailCopyWith<MemberDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailCopyWith<$Res> {
  factory $MemberDetailCopyWith(
          MemberDetail value, $Res Function(MemberDetail) then) =
      _$MemberDetailCopyWithImpl<$Res, MemberDetail>;
  @useResult
  $Res call({List<Task> filterdTasks, Map<DateTime, double> detail});
}

/// @nodoc
class _$MemberDetailCopyWithImpl<$Res, $Val extends MemberDetail>
    implements $MemberDetailCopyWith<$Res> {
  _$MemberDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterdTasks = null,
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      filterdTasks: null == filterdTasks
          ? _value.filterdTasks
          : filterdTasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberDetailImplCopyWith<$Res>
    implements $MemberDetailCopyWith<$Res> {
  factory _$$MemberDetailImplCopyWith(
          _$MemberDetailImpl value, $Res Function(_$MemberDetailImpl) then) =
      __$$MemberDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> filterdTasks, Map<DateTime, double> detail});
}

/// @nodoc
class __$$MemberDetailImplCopyWithImpl<$Res>
    extends _$MemberDetailCopyWithImpl<$Res, _$MemberDetailImpl>
    implements _$$MemberDetailImplCopyWith<$Res> {
  __$$MemberDetailImplCopyWithImpl(
      _$MemberDetailImpl _value, $Res Function(_$MemberDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterdTasks = null,
    Object? detail = null,
  }) {
    return _then(_$MemberDetailImpl(
      null == filterdTasks
          ? _value._filterdTasks
          : filterdTasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      null == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ));
  }
}

/// @nodoc

class _$MemberDetailImpl implements _MemberDetail {
  const _$MemberDetailImpl(
      final List<Task> filterdTasks, final Map<DateTime, double> detail)
      : _filterdTasks = filterdTasks,
        _detail = detail;

  final List<Task> _filterdTasks;
  @override
  List<Task> get filterdTasks {
    if (_filterdTasks is EqualUnmodifiableListView) return _filterdTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterdTasks);
  }

  final Map<DateTime, double> _detail;
  @override
  Map<DateTime, double> get detail {
    if (_detail is EqualUnmodifiableMapView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_detail);
  }

  @override
  String toString() {
    return 'MemberDetail(filterdTasks: $filterdTasks, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailImpl &&
            const DeepCollectionEquality()
                .equals(other._filterdTasks, _filterdTasks) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filterdTasks),
      const DeepCollectionEquality().hash(_detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailImplCopyWith<_$MemberDetailImpl> get copyWith =>
      __$$MemberDetailImplCopyWithImpl<_$MemberDetailImpl>(this, _$identity);
}

abstract class _MemberDetail implements MemberDetail {
  const factory _MemberDetail(
          final List<Task> filterdTasks, final Map<DateTime, double> detail) =
      _$MemberDetailImpl;

  @override
  List<Task> get filterdTasks;
  @override
  Map<DateTime, double> get detail;
  @override
  @JsonKey(ignore: true)
  _$$MemberDetailImplCopyWith<_$MemberDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewTable {
  List<BusinessDetail> get businessDetails =>
      throw _privateConstructorUsedError; // 月ごとに工数を細分化したプロジェクト
  List<MemberDetail> get memberDetails =>
      throw _privateConstructorUsedError; // 月ごとに工数を集計した人員アサイン
  List<List<String>> get captions =>
      throw _privateConstructorUsedError; // 表示用データ（工数）
  List<List<double>> get mms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewTableCopyWith<ViewTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewTableCopyWith<$Res> {
  factory $ViewTableCopyWith(ViewTable value, $Res Function(ViewTable) then) =
      _$ViewTableCopyWithImpl<$Res, ViewTable>;
  @useResult
  $Res call(
      {List<BusinessDetail> businessDetails,
      List<MemberDetail> memberDetails,
      List<List<String>> captions,
      List<List<double>> mms});
}

/// @nodoc
class _$ViewTableCopyWithImpl<$Res, $Val extends ViewTable>
    implements $ViewTableCopyWith<$Res> {
  _$ViewTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessDetails = null,
    Object? memberDetails = null,
    Object? captions = null,
    Object? mms = null,
  }) {
    return _then(_value.copyWith(
      businessDetails: null == businessDetails
          ? _value.businessDetails
          : businessDetails // ignore: cast_nullable_to_non_nullable
              as List<BusinessDetail>,
      memberDetails: null == memberDetails
          ? _value.memberDetails
          : memberDetails // ignore: cast_nullable_to_non_nullable
              as List<MemberDetail>,
      captions: null == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      mms: null == mms
          ? _value.mms
          : mms // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewTableImplCopyWith<$Res>
    implements $ViewTableCopyWith<$Res> {
  factory _$$ViewTableImplCopyWith(
          _$ViewTableImpl value, $Res Function(_$ViewTableImpl) then) =
      __$$ViewTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BusinessDetail> businessDetails,
      List<MemberDetail> memberDetails,
      List<List<String>> captions,
      List<List<double>> mms});
}

/// @nodoc
class __$$ViewTableImplCopyWithImpl<$Res>
    extends _$ViewTableCopyWithImpl<$Res, _$ViewTableImpl>
    implements _$$ViewTableImplCopyWith<$Res> {
  __$$ViewTableImplCopyWithImpl(
      _$ViewTableImpl _value, $Res Function(_$ViewTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessDetails = null,
    Object? memberDetails = null,
    Object? captions = null,
    Object? mms = null,
  }) {
    return _then(_$ViewTableImpl(
      null == businessDetails
          ? _value._businessDetails
          : businessDetails // ignore: cast_nullable_to_non_nullable
              as List<BusinessDetail>,
      null == memberDetails
          ? _value._memberDetails
          : memberDetails // ignore: cast_nullable_to_non_nullable
              as List<MemberDetail>,
      null == captions
          ? _value._captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      null == mms
          ? _value._mms
          : mms // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc

class _$ViewTableImpl implements _ViewTable {
  const _$ViewTableImpl(
      final List<BusinessDetail> businessDetails,
      final List<MemberDetail> memberDetails,
      final List<List<String>> captions,
      final List<List<double>> mms)
      : _businessDetails = businessDetails,
        _memberDetails = memberDetails,
        _captions = captions,
        _mms = mms;

  final List<BusinessDetail> _businessDetails;
  @override
  List<BusinessDetail> get businessDetails {
    if (_businessDetails is EqualUnmodifiableListView) return _businessDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessDetails);
  }

// 月ごとに工数を細分化したプロジェクト
  final List<MemberDetail> _memberDetails;
// 月ごとに工数を細分化したプロジェクト
  @override
  List<MemberDetail> get memberDetails {
    if (_memberDetails is EqualUnmodifiableListView) return _memberDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberDetails);
  }

// 月ごとに工数を集計した人員アサイン
  final List<List<String>> _captions;
// 月ごとに工数を集計した人員アサイン
  @override
  List<List<String>> get captions {
    if (_captions is EqualUnmodifiableListView) return _captions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_captions);
  }

// 表示用データ（工数）
  final List<List<double>> _mms;
// 表示用データ（工数）
  @override
  List<List<double>> get mms {
    if (_mms is EqualUnmodifiableListView) return _mms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mms);
  }

  @override
  String toString() {
    return 'ViewTable(businessDetails: $businessDetails, memberDetails: $memberDetails, captions: $captions, mms: $mms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewTableImpl &&
            const DeepCollectionEquality()
                .equals(other._businessDetails, _businessDetails) &&
            const DeepCollectionEquality()
                .equals(other._memberDetails, _memberDetails) &&
            const DeepCollectionEquality().equals(other._captions, _captions) &&
            const DeepCollectionEquality().equals(other._mms, _mms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_businessDetails),
      const DeepCollectionEquality().hash(_memberDetails),
      const DeepCollectionEquality().hash(_captions),
      const DeepCollectionEquality().hash(_mms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewTableImplCopyWith<_$ViewTableImpl> get copyWith =>
      __$$ViewTableImplCopyWithImpl<_$ViewTableImpl>(this, _$identity);
}

abstract class _ViewTable implements ViewTable {
  const factory _ViewTable(
      final List<BusinessDetail> businessDetails,
      final List<MemberDetail> memberDetails,
      final List<List<String>> captions,
      final List<List<double>> mms) = _$ViewTableImpl;

  @override
  List<BusinessDetail> get businessDetails;
  @override // 月ごとに工数を細分化したプロジェクト
  List<MemberDetail> get memberDetails;
  @override // 月ごとに工数を集計した人員アサイン
  List<List<String>> get captions;
  @override // 表示用データ（工数）
  List<List<double>> get mms;
  @override
  @JsonKey(ignore: true)
  _$$ViewTableImplCopyWith<_$ViewTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectState {
  List<Business> get businesses => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  List<String> get customers => throw _privateConstructorUsedError;
  ViewTable get viewTable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
  @useResult
  $Res call(
      {List<Business> businesses,
      List<Task> tasks,
      List<String> members,
      List<String> customers,
      ViewTable viewTable});

  $ViewTableCopyWith<$Res> get viewTable;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businesses = null,
    Object? tasks = null,
    Object? members = null,
    Object? customers = null,
    Object? viewTable = null,
  }) {
    return _then(_value.copyWith(
      businesses: null == businesses
          ? _value.businesses
          : businesses // ignore: cast_nullable_to_non_nullable
              as List<Business>,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      viewTable: null == viewTable
          ? _value.viewTable
          : viewTable // ignore: cast_nullable_to_non_nullable
              as ViewTable,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTableCopyWith<$Res> get viewTable {
    return $ViewTableCopyWith<$Res>(_value.viewTable, (value) {
      return _then(_value.copyWith(viewTable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStateImplCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$ProjectStateImplCopyWith(
          _$ProjectStateImpl value, $Res Function(_$ProjectStateImpl) then) =
      __$$ProjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Business> businesses,
      List<Task> tasks,
      List<String> members,
      List<String> customers,
      ViewTable viewTable});

  @override
  $ViewTableCopyWith<$Res> get viewTable;
}

/// @nodoc
class __$$ProjectStateImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateImpl>
    implements _$$ProjectStateImplCopyWith<$Res> {
  __$$ProjectStateImplCopyWithImpl(
      _$ProjectStateImpl _value, $Res Function(_$ProjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businesses = null,
    Object? tasks = null,
    Object? members = null,
    Object? customers = null,
    Object? viewTable = null,
  }) {
    return _then(_$ProjectStateImpl(
      null == businesses
          ? _value._businesses
          : businesses // ignore: cast_nullable_to_non_nullable
              as List<Business>,
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == viewTable
          ? _value.viewTable
          : viewTable // ignore: cast_nullable_to_non_nullable
              as ViewTable,
    ));
  }
}

/// @nodoc

class _$ProjectStateImpl extends _ProjectState {
  const _$ProjectStateImpl(
      final List<Business> businesses,
      final List<Task> tasks,
      final List<String> members,
      final List<String> customers,
      this.viewTable)
      : _businesses = businesses,
        _tasks = tasks,
        _members = members,
        _customers = customers,
        super._();

  final List<Business> _businesses;
  @override
  List<Business> get businesses {
    if (_businesses is EqualUnmodifiableListView) return _businesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businesses);
  }

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<String> _customers;
  @override
  List<String> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final ViewTable viewTable;

  @override
  String toString() {
    return 'ProjectState(businesses: $businesses, tasks: $tasks, members: $members, customers: $customers, viewTable: $viewTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateImpl &&
            const DeepCollectionEquality()
                .equals(other._businesses, _businesses) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.viewTable, viewTable) ||
                other.viewTable == viewTable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_businesses),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_customers),
      viewTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      __$$ProjectStateImplCopyWithImpl<_$ProjectStateImpl>(this, _$identity);
}

abstract class _ProjectState extends ProjectState {
  const factory _ProjectState(
      final List<Business> businesses,
      final List<Task> tasks,
      final List<String> members,
      final List<String> customers,
      final ViewTable viewTable) = _$ProjectStateImpl;
  const _ProjectState._() : super._();

  @override
  List<Business> get businesses;
  @override
  List<Task> get tasks;
  @override
  List<String> get members;
  @override
  List<String> get customers;
  @override
  ViewTable get viewTable;
  @override
  @JsonKey(ignore: true)
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
