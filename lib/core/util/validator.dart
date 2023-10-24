class Validator {
  static String? email(String? str) {
    if (str == null || str.isEmpty) {
      return "• Lütfen email giriniz.";
    } else if (str.isNotEmpty) {
      bool rex = RegExp(
              r"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
              "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
              "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
              "z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
              "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
              "9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
              "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])")
          .hasMatch(str);
      return rex ? null : "• Lütfen geçerli email giriniz.";
    }
    return null;
  }

  static String? notNullOrEmpty(String? str) {
    if (str == null || str.isEmpty) {
      return "• Boş bırakılamaz";
    }
    return null;
  }

  static String? passwordLenghtValidator(String? str) {
    var msg = "• Şifreniz en az 8 karakterden oluşmalı.";
    if (str == null || str.isEmpty) {
      return msg;
    } else if (str.isNotEmpty) {
      bool rex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(str);

      return rex ? null : msg;
    } else {
      return null;
    }
  }

  static String? password(String? str) {
    var msg =
        "• Şifreniz en az 8 karakterden oluşmalı. Büyük harf, küçük harf, rakam ve sembol içermelidir.";
    if (str == null || str.isEmpty) {
      return msg;
    } else if (str.isNotEmpty) {
      bool rex = RegExp(
              r"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!?.'^+%&/()=_/*-+,;:<>$#{}])[a-zA-Z0-9!?.'^+%&/()=_/*-+,;:<>$#{}]{8,}$")
          .hasMatch(str);

      return rex ? null : msg;
    }
    return null;
  }

  static String passwordCompare(String pass1, String pass2) {
    var msg = "• Girdiğiniz şifreler uyumlu değil, kontrol ediniz.";
    if (pass1 != pass2) {
      return msg;
    } else if (pass1.isEmpty) {}
    return "";
  }

  static String? validateName(String? name) {
    /// 2 karakterden az özel karakter ve sayı giremez
    String msg = "• Lütfen ad alanını kontrol ediniz";
    if (name == null || name.length < 2) {
      return msg;
    }
    return null;
  }

  static String? validateSurname(String? name) {
    String msg = "• Lütfen ad alanını kontrol ediniz";
    if (name == null || name.length < 2) {
      return msg;
    }

    return null;
  }
}
