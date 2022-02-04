extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String toTitleCase() => toLowerCase().split(' ').map((word) {
        word.trim();
        String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
        return word.isNotEmpty ? word[0].toUpperCase() + leftText : "";
      }).join(' ');
}

extension StandartLength on String {
  String trimToLength(int length) {
    if (this.length > length) {
      return substring(0, length) + '...';
    } else {
      return this;
    }
  }
}
