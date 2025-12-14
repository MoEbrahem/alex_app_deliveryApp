
class RecommendedModel {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final bool isFav;

  
RecommendedModel({
    required this.isFav,  
    required this.price,
    required this.title, 
    required this.subTitle, 
    required this.image,
    }); 
}