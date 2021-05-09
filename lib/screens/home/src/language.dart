class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇷🇺", 'Русский', 'ru'),
      Language(2, "🇺🇸", 'English', 'en'),
      Language(3, "🇩🇪", 'Deutsch', 'de'),
    ];
  }
}
