import 'package:get/utils.dart';

class ValidationHelper {
  static String? validate({
    required String? value,
    required String inputName,
    int? biggerThan,
    int? smallerThan,
    bool isEmail = false,
    bool isUrl = false,
  }) {
    if (value == null) {
      return "Field Required".trParams({'_ield': inputName.tr});
    }

    if (value.trim().isEmpty) {
      return "Field Required".trParams({'_ield': inputName.tr});
    }
    if (value.trim().length < biggerThan!) {
      return "Bigger Than"
          .trParams({'_ount': biggerThan.toString(), '_ield': inputName.tr});
    }

    if (value.trim().length >= smallerThan!) {
      return "Smaller Than"
          .trParams({'_ount': smallerThan.toString(), '_ield': inputName.tr});
    }

    // is email
    if (isEmail && !GetUtils.isEmail(value)) return "E-mail not correct!.".tr;

    if (isUrl && !GetUtils.isURL(value)) return "URL not correct!.".tr;

    return null;
  }
}
