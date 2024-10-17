<<<<<<< HEAD

# TP Flutter Login

## Objectif
Ce TP a pour objectif de vous familiariser avec la création d'une interface utilisateur dynamique dans Flutter, en utilisant un splash screen et un scénario de connexion.  
Vous utiliserez également SQLite pour gérer les données localement, en particulier pour enregistrer et vérifier les informations d'utilisateur (nom, email, et mot de passe).

---

## 1. Création de l'interface utilisateur dynamique avec Flutter

### Installation de Flutter :
1. Assurez-vous que Flutter est correctement installé. Si ce n’est pas encore fait :
   - Installez **Flutter SDK**.
   - Configurez un émulateur ou connectez un appareil réel.
   - Testez l’environnement avec la commande suivante :
     ```bash
     flutter doctor
     ```

2. Créez le projet Flutter :
   ```bash
   flutter create tp_flutter_login
   cd tp_flutter_login
   ```

3. **Fichiers importants :**
   - `main.dart` : Point d’entrée de l’application.
   - Configurez l’arborescence de navigation entre le **splash screen**, l’écran de **connexion**, et l’écran principal.

---

## 2. Partie 1 : SplashScreen avec Lottie pour Flutter

### Étape 1 : Ajouter Lottie au projet
- Suivez les instructions du site [Lottie](https://pub.dev/packages/lottie/install).
- Dans le terminal du projet, exécutez :
  ```bash
  flutter pub add lottie
  ```
- Assurez-vous que la dépendance est bien ajoutée dans `pubspec.yaml` :
  ```yaml
  dependencies:
    flutter:
      sdk: flutter
    lottie: ^3.1.3
  ```

---

### Étape 2 : Télécharger et Ajouter une Animation Lottie
1. Téléchargez une animation depuis [LottieFiles](https://app.lottiefiles.com/animation/d200531a-3936-4e03-9f41-661bd51c14b8?channel=web&source=public-animation&panel=download).
2. Créez un dossier `assets/` à la **racine** du projet.
3. Placez le fichier JSON dans ce dossier :  
   ```
   assets/AnimationLaunch.json
   ```
4. Référencez le fichier dans **`pubspec.yaml`** :
   ```yaml
   flutter:
     assets:
      - assets/AnimationLaunch.json
   ```

---

### Étape 3 : Implémenter le Splash Screen avec Lottie

Créez le fichier `lib/splash_screen.dart` et ajoutez ce code :

```dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login_page.dart'; // Importer l'écran de connexion

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Redirige vers l'écran de connexion après 3 secondes
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/AnimationLaunch.json',
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
```

---

### Étape 4 : Modifier `main.dart`
Ouvrez le fichier **`main.dart`** et modifiez-le ainsi :

```dart
import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Importez le splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(), // Affiche le SplashScreen au démarrage
    );
  }
}
```

---

## 3. Étape 5 : Tester l'Application
- Exécutez votre application avec la commande suivante :
  ```bash
  flutter run
  ```
- **Vérifiez** :
  1. Que l'animation s'affiche correctement pendant 3 secondes.
  2. Que l’application redirige vers l’écran de connexion après ces 3 secondes.

---

## Auteurs
- Nihel Sliti
=======
# tp_flutter_login

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
>>>>>>> e6bcb14 (Initial commit)
