class QuestionModel {
  String questions;
  List<String> answers;
  int? selectedAnsers;

  String? getAnswer() {
    return selectedAnsers != null ? answers[selectedAnsers!] : null;
  }

  QuestionModel(this.questions, this.answers);
}
