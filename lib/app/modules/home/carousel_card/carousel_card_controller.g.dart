// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_card_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CarouselCardController = BindInject(
  (i) => CarouselCardController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarouselCardController on _CarouselCardControllerBase, Store {
  final _$valueAtom = Atom(name: '_CarouselCardControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$currentAtom = Atom(name: '_CarouselCardControllerBase.current');

  @override
  int get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  @override
  set current(int value) {
    _$currentAtom.reportWrite(value, super.current, () {
      super.current = value;
    });
  }

  final _$cardListAtom = Atom(name: '_CarouselCardControllerBase.cardList');

  @override
  ObservableList<String> get cardList {
    _$cardListAtom.reportRead();
    return super.cardList;
  }

  @override
  set cardList(ObservableList<String> value) {
    _$cardListAtom.reportWrite(value, super.cardList, () {
      super.cardList = value;
    });
  }

  final _$cardIsExpandedAtom =
      Atom(name: '_CarouselCardControllerBase.cardIsExpanded');

  @override
  bool get cardIsExpanded {
    _$cardIsExpandedAtom.reportRead();
    return super.cardIsExpanded;
  }

  @override
  set cardIsExpanded(bool value) {
    _$cardIsExpandedAtom.reportWrite(value, super.cardIsExpanded, () {
      super.cardIsExpanded = value;
    });
  }

  final _$_CarouselCardControllerBaseActionController =
      ActionController(name: '_CarouselCardControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CarouselCardControllerBaseActionController
        .startAction(name: '_CarouselCardControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CarouselCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentIndex(dynamic value) {
    final _$actionInfo = _$_CarouselCardControllerBaseActionController
        .startAction(name: '_CarouselCardControllerBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(value);
    } finally {
      _$_CarouselCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCardExpandedStatus(dynamic value) {
    final _$actionInfo = _$_CarouselCardControllerBaseActionController
        .startAction(name: '_CarouselCardControllerBase.setCardExpandedStatus');
    try {
      return super.setCardExpandedStatus(value);
    } finally {
      _$_CarouselCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
current: ${current},
cardList: ${cardList},
cardIsExpanded: ${cardIsExpanded}
    ''';
  }
}
