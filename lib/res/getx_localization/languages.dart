import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email': 'Enter your Email',
          'pass': 'Enter you Password',
        },
        'np_NEP': {
          'email': 'आफ्नो इमेल दिनुहोस्',
          'pass': 'आफ्नो पासवर्ड दिनुहोस्',
        }
      };
}
