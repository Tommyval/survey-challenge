import 'package:new_challenge/models/questionmodel.dart';

class QuestionList {
  List<QuestionModel> questions = [
    QuestionModel('Employment Status of respondent', [
      'Housewife',
      'Self-Employed',
      'Employed',
      'unemployed',
    ]),
    QuestionModel('What is your marital status?', [
      'Single',
      'Seperated',
      'Married',
      'Divorced',
    ]),
    QuestionModel('How much do you earn weekly', [
      '0 – 1000',
      '1000-5000',
      '5000-10000',
      '10000 and above',
    ]),
    QuestionModel("What is your religion",
        ["Christian", "Muslim", "Traditional", "No Religion", "others"]),
    QuestionModel(
        "Do you know if Lump or swelling in the armpit is a sign of breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you know if Swelling of all or parts of the breast is a sign of breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you know if Skin irritation or dimpling is a sign of breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        " Do you know if Breast or nipple pain  is a sign of breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you know if Nipple retraction (turning inward) is a sign of breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you know if Redness, scaliness, or thickening of the nipple or breast skin is a sign of breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you know if Nipple discharge (other than breast milk) is a sign of breast cancer ",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Conditions (risk factors) that determine developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think being a woman is a risk factor For developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Getting older is a risk factor For developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Starting menstruation early (early menarche) is a risk factor for developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Stopping menstruation late( Late menopause) is a risk factor for developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Use of Oral Contraceptive Pills is a risk factor for developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Having a family history of breast cancer is a risk factor for developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Poor eating habit; too much fatty foods is a risk factor for developing breast cancer",
        ["Yes", "No", "Don't Know"]),
    QuestionModel(
        "Do you think Excessive alcohol intake is a risk factor for developing breast cancer",
        ["Yes", "No", "Don't Know"]),
  ];
}
