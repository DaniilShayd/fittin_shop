// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductList _$ProductListFromJson(Map<String, dynamic> json) {
  return _ProductList.fromJson(json);
}

/// @nodoc
mixin _$ProductList {
  List<Product> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListCopyWith<ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListCopyWith<$Res> {
  factory $ProductListCopyWith(
          ProductList value, $Res Function(ProductList) then) =
      _$ProductListCopyWithImpl<$Res, ProductList>;
  @useResult
  $Res call({List<Product> results});
}

/// @nodoc
class _$ProductListCopyWithImpl<$Res, $Val extends ProductList>
    implements $ProductListCopyWith<$Res> {
  _$ProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListCopyWith<$Res>
    implements $ProductListCopyWith<$Res> {
  factory _$$_ProductListCopyWith(
          _$_ProductList value, $Res Function(_$_ProductList) then) =
      __$$_ProductListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> results});
}

/// @nodoc
class __$$_ProductListCopyWithImpl<$Res>
    extends _$ProductListCopyWithImpl<$Res, _$_ProductList>
    implements _$$_ProductListCopyWith<$Res> {
  __$$_ProductListCopyWithImpl(
      _$_ProductList _value, $Res Function(_$_ProductList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_ProductList(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductList implements _ProductList {
  const _$_ProductList({required final List<Product> results})
      : _results = results;

  factory _$_ProductList.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListFromJson(json);

  final List<Product> _results;
  @override
  List<Product> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ProductList(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductList &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListCopyWith<_$_ProductList> get copyWith =>
      __$$_ProductListCopyWithImpl<_$_ProductList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListToJson(
      this,
    );
  }
}

abstract class _ProductList implements ProductList {
  const factory _ProductList({required final List<Product> results}) =
      _$_ProductList;

  factory _ProductList.fromJson(Map<String, dynamic> json) =
      _$_ProductList.fromJson;

  @override
  List<Product> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListCopyWith<_$_ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}
