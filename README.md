# api_cassandra
## Principe:
Creer un conteneur pour fastapi capable de communiquer avec un cluster que l'on aura approvisionner en données à l'aide de 2 fichiers csv [restaurants.csv](/resources),et [restaurants_inspections.csv](/resources).

## Installation des logiciels nécessaires

On aura besoin du logiciel suivant:
- [Docker desktop pour windows](https://www.docker.com/products/docker-desktop) pour gérer nos diffirénts conteneurs

![image](/Capture1.png)

## Manipulation à faire
Ouvrir le cmd se situer dans le dossier ou l'on souhaite travailer à l'aide de la commande 
- cd de l'invite de commande
puis faire:
- git clone https://github.com/LuigiBKL/api_cassandra

Une fois les fichiers importés,
-Extraire le fichier [data.rar](/) qui contient les données déjà préparées pour nos conteneurs 
puis faire 'docker-compose up -d' dans l'invite de commande

Dans le cas où l'on souhaite changer de données il faudra modifier le fichier init et les fichiers que l'on soit souhaite utiliser pour l'insertion dans le cluster de cassandra avec la  commande 
-'docker cp chemindudossieràcopier nomduconteneur:/'

### FastApi
![image](/Capture2.png)


