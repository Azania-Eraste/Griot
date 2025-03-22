import 'package:griot/Models/Conte.dart';

class Lieu{
  final String nom;
  final String description;
  final String imageUrl;
  final List<Conte> contes;

  Lieu({required this.contes,required this.nom, required this.description, required  this.imageUrl});
}