import 'dart:math';

/// Calculates the height of the separator between match cards.
///
/// The separator height is based on the size of the groups, the vertical margin between items,
/// and the height of each card.
double calculateSeparatorHeight({
  required int groupsSize,
  required double itemsMarginVertical,
  required double cardHeight,
}) {
  double separatorHeight = 0;
  for (int i = 0; i <= groupsSize; i++) {
    separatorHeight = (cardHeight * (pow(2, i) - 1)) +
        (itemsMarginVertical * ((pow(2, i) - 1) + 1));
  }
  return separatorHeight;
}

List<int> calculateIndices(List<int> values) {
  if (values.isEmpty) return [];

  List<int> indices = [0];
  int currentIndex = 0;

  // Itera dal secondo elemento in poi
  for (int i = 1; i < values.length; i++) {
    // Se il valore è diverso dal precedente, incrementa l'indice
    if (values[i] != values[i - 1]) {
      currentIndex++;
    }
    indices.add(currentIndex);
  }

  return indices;
}
