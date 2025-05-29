class QuizQuestion {
  const QuizQuestion(this.text, this.anwsers);
  final String text;
  final List<String> anwsers;
  //xáo trộn thứ tự của danh sách 
  List<String> getAnwsersShuffle(){
    final shuffleList = List.of(anwsers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
