//カードの種類を列挙型で定義(仮)
enum CardType { goods, weapon, trade, armor }

//カードクラス(仮)
class OffenceHandCard {
  final int id;
  final CardType type;
  bool isSelected; //カードが選択されているか
  bool isDisabled; //カードが無効化されているか

  //コンストラクタ
  OffenceHandCard({
    required this.id,
    required this.type,
    this.isSelected = false,
    this.isDisabled = false,
  });

  //カードの選択状態を切り替える
  List<OffenceHandCard> getSelectableCards(
      List<OffenceHandCard> cards, CardType targetType) {
    //選択可能なカードのリストを初期化
    List<OffenceHandCard> selectableCards = [];

    //手札のカードを一枚ずつ取り出して、選択可能なカードか判定
    for (OffenceHandCard card in cards) {
      if (card.type != CardType.armor && !card.isDisabled) {
        //選択可能なカードリストに追加
        selectableCards.add(card);
      }
    }

    //フィルタリングされた選択可能なカードのリストを返す
    return selectableCards;
  }
}

//カードクラス(仮)
class DefenseHandCard {
  final int id;
  final CardType type;
  bool isSelected; //カードが選択されているか
  bool isDisabled; //カードが無効化されているか

  //コンストラクタ
  DefenseHandCard({
    required this.id,
    required this.type,
    this.isSelected = false,
    this.isDisabled = false,
  });

  //カードの選択状態を切り替える
  List<DefenseHandCard> getSelectableCards(List<DefenseHandCard> cards) {
    //選択可能なカードのリストを初期化
    List<DefenseHandCard> selectableCards = [];

    //手札のカードを一枚ずつ取り出して、選択可能なカードか判定
    for (DefenseHandCard card in cards) {
      if (card.type == CardType.armor && !card.isDisabled) {
        //選択可能なカードリストに追加
        selectableCards.add(card);
      }
    }

    //フィルタリングされた選択可能なカードのリストを返す
    return selectableCards;
  }
}
