# README
ruby 3.0.3
rails 6.1.7

Pour accéder à la page admin, changer la propriété 'admin' du current_user via la console, pour la passer à true. Vous pourrez ensuite consulter la page '/dashboard' avec la liste des urls raccourcies, si vous même ou d'autres utilisateurs en ont crées.


__Etapes :__  
1. Evaluation des attentes de la consigne.  
2. Evaluation des modèles dont j'aurais besoin dans ma db et de leurs liens.  
3. Evaluation des librairies dont j'aurais besoin.  
4. Réflexion sur papier de la logique à mettre en place pour réduire une URL et évaluation d'un ou plusieurs cornercases (À calibrer en fonction des attentes de la consigne. Ici, temps limité, donc il y a beaucoup de cornercases que je n'ai pas pu couvrir. Par exemple, je n'ai pas contraint le nombre d'urls qu'un utilisateur a le droit de raccourcir. En revanche, il me semble plus approprié d'empêcher que deux url réduites soient identiques).  
5. idéalement ici écriture des tests qui couvrent les specs que j'ai déduites des attentes que j'ai interprêtées de la consigne.  
6. Code : création du projet, installation des librairies, mise en place des modèles et des validations, de l'authentification, des controlleurs, de la logique de racourcissement d'url.  
7. Redaction de quelques tests, non exhaustifs (authentification, controlleurs).
8. Redaction du Readme.
