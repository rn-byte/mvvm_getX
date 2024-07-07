import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email': 'Enter your Email',
          'pass': 'Enter you Password',
          'internet_exception':
              'We are unable to show result.\n Please Check Your Internt Connection.',
          'general_exception':
              'we are unable to process your request.\n Please try again.',
          'retry': 'Retry'
        },
        'np_NEP': {
          'email': 'आफ्नो इमेल दिनुहोस्',
          'pass': 'आफ्नो पासवर्ड दिनुहोस्',
          'internet_exception':
              'हामी परिणाम देखाउन असमर्थ छौं।\n कृपया आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।',
          'general_exception':
              'हामी तपाईंको अनुरोधलाई प्रशोधन गर्न असमर्थ छौं।\n कृपया पुन: प्रयास गर्नुहोस्।',
          'retry': 'पुन: प्रयास गर्नुहोस्'
        }
      };
}
