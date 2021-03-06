class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "๐ท๐บ", 'ะ ัััะบะธะน', 'ru'),
      Language(2, "๐บ๐ธ", 'English', 'en'),
      Language(3, "๐ฉ๐ช", 'Deutsch', 'de'),
    ];
  }
}
