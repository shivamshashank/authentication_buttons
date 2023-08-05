/// Extensions provide a way to extend classes and create more expressive, readable, and reusable code.
/// This method returns a String with first [Character] as Capital and rest others are Small
extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}
