import 'package:flutter/foundation.dart';

enum RestaurantType { both, nonVeg, veg }

class RestaurantRegistrationProvider extends ChangeNotifier {
  RestaurantType _selectedRestaurantType = RestaurantType.both;

  RestaurantType get selectedRestaurantType => _selectedRestaurantType;

  void setRestaurantType(RestaurantType type) {
    _selectedRestaurantType = type;
    notifyListeners();
  }

  String get restaurantTypeLabel {
    switch (_selectedRestaurantType) {
      case RestaurantType.both:
        return 'Both';
      case RestaurantType.nonVeg:
        return 'Non-Veg';
      case RestaurantType.veg:
        return 'Veg';
    }
  }

  final List<String> _openingHoursList = [
    '10 AM - 11 PM',
    '9 AM - 10 PM', 
    '11 AM - 12 AM',
    '8 AM - 10 PM',
    '12 PM - 10 PM',
    '6 AM - 8 PM',
  ];

  // Currently selected opening hours
  String? _selectedOpeningHours;

  // Getters
  List<String> get openingHoursList => _openingHoursList;
  String? get selectedOpeningHours => _selectedOpeningHours;
  // Method to update selected opening hours
  void setSelectedOpeningHours(String? hours) {
    _selectedOpeningHours = hours;
    notifyListeners();
  }

  // Method to clear selection
  void clearOpeningHours() {
    _selectedOpeningHours = null;
    notifyListeners();
  }
}