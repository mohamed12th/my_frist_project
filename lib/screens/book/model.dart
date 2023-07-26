class Book{
  int id;
  String title , image,descreption ;
  bool isFav ;
  Book({
    required this.id,
    required this.title,
    required this.image,
    required this.descreption,
    this.isFav=false ,


});
  void toggleFav (){
    isFav = !isFav ;
  }
}