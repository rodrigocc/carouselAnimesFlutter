import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'carousel_card_controller.g.dart';

@Injectable()
class CarouselCardController = _CarouselCardControllerBase
    with _$CarouselCardController;

abstract class _CarouselCardControllerBase with Store {
  @observable
  int value = 0;

  @observable
  int current = 0;

  @observable
  ObservableList<String> cardList = [
    'assets/haikyuNew.jpg',
    'assets/naruto.png',
    'assets/attackOnTitan.jpg',
    'assets/demonSlayer.jpg',
    'assets/kabaneri.jpg',
    'assets/bnk.jpg',
    'assets/narutoMovie.jpg'
  ].asObservable();

  @observable
  bool cardIsExpanded = false;

  @action
  void increment() {
    value++;
  }

  @action
  void setCurrentIndex(value) {
    current = value;
  }

  @action
  void setCardExpandedStatus(value) {
    cardIsExpanded = value;
  }
}
