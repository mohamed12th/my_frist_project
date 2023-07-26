class BrandPhotoModel
{
  int id ;
  String imageUrl , description;
  int numOfLikes;
  bool isLiked ;
  BrandPhotoModel({
      required this.id ,
      required this.imageUrl ,
      required this.description ,
      required this.numOfLikes ,
      required this.isLiked ,
  });
}