class Ingredient {
  final String name;
  final String qty;
  const Ingredient(this.name, this.qty);
}

class CookStep {
  final String text;

  /// If set, the cooking screen shows a start/pause timer for this step.
  final int? timerSeconds;
  const CookStep(this.text, {this.timerSeconds});
}

class Recipe {
  final String id;
  final String name;

  /// Optional Wikipedia article title to use for the photo lookup when the
  /// dish name alone would not find the right page (e.g. "Biryani").
  final String? wikiTitle;
  final String region;
  final String blurb;
  final int minutes;
  final String difficulty;
  final bool vegetarian;
  final int servings;
  final String emoji;
  final List<Ingredient> ingredients;
  final List<CookStep> steps;

  const Recipe({
    required this.id,
    required this.name,
    this.wikiTitle,
    required this.region,
    required this.blurb,
    required this.minutes,
    required this.difficulty,
    required this.vegetarian,
    required this.servings,
    required this.emoji,
    required this.ingredients,
    required this.steps,
  });
}
