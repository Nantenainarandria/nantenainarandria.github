<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HAPPY MOTHER'S DAY</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Indie Flower', cursive; /* Police de caractères avec des fleurs */
            margin: 0;
            padding: 0;
            background: rgb(255, 255, 255); /* Fond rose dégradé */
        }

        header {
            text-align: center;
            padding: 30px 0; /* Ajuster la marge intérieure */
            margin-bottom: 20px; /* Ajout de la marge en bas */
        }

        header h1, header span {
            font-size: 2em; /* Ajuster la taille de la police */
            color: #fff;
            display: inline-block; /* Afficher en ligne */
            position: relative;
        }

        header span {
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            overflow: hidden;
            color: #000000; /* Couleur du texte animé */
            animation: reveal 2s ease forwards; /* Animation d'écriture */
        }

        @keyframes reveal {
            0% {
                width: 0;
            }
            100% {
                width: 100%;
            }
        }

        main {
            max-width: 800px;
            margin: 20px auto;
            padding: 0 20px;
        }

        h2 {
            color: #000000;
            background-color: #ffffff; /* Fond rose pour le texte */
            padding: 15px; /* Agrandir l'espacement autour du texte */
            font-family: 'Indie flower', cursive; /* Police de titre */
            font-weight: bold; /* Rendre le texte en gras */
            font-size: 1.5em; /* Agrandir la taille de la police */
        }

        .carousel-inner img {
            max-height: 500px;
            width: auto;
            margin: auto;
            border: 10px solid #fff; /* Bordure blanche avec une largeur de 10px */
            border-radius: 20px; /* Bordures arrondies */
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5); /* Ombre portée */
            transition: border-color 0.3s, transform 0.3s; /* Ajouter une transition pour la couleur de la bordure et la transformation */
            cursor: pointer; /* Curseur pointer pour indiquer que l'image est cliquable */
        }

        .carousel-inner img:hover {
            border-color: #ffcccc; /* Couleur de la bordure au survol */
            transform: scale(1.05); /* Agrandir légèrement l'image au survol */
        }

        .carousel-control-prev,
        .carousel-control-next {
            transition: opacity 0.3s;
        }

        .carousel-control-prev:hover,
        .carousel-control-next:hover {
            opacity: 0.8;
        }

        footer {
            background-color: #f1e699;
            padding: 5px 0; /* Réduire la taille de la marge intérieure */
            text-align: center;
            color: #000000; /* Couleur du texte dans le footer */
            margin-top: 5px; /* Modifier la marge en haut du footer */
            font-family: Arial, sans-serif; /* Police du texte dans le footer */
        }

        footer p {
            font-size: 12px; /* Taille du texte du copyright */
        }

        footer a {
            color: #000000; /* Couleur des liens dans le footer */
            margin: 0 10px; /* Réduire la marge entre les icônes */
        }

        .social-icon {
            font-size: 15px; /* Réduire la taille de l'icône */
            margin-right: 10px; /* Ajuster la marge entre les icônes */
        }

        .social-info {
            font-size: 10px; /* Taille du texte des informations sociales */
            color: #000000; /* Couleur du texte des informations sociales */
        }

        /* Style pour le bouton Facebook */
        .btn-facebook {
            background-color: #ffa8f8; /* Couleur de fond bleue de Facebook */
            color: #fff; /* Texte blanc */
            border: none; /* Pas de bordure */
            padding: 10px 20px; /* Espacement à l'intérieur du bouton */
            border-radius: 50px; /* Bordures arrondies */
            text-decoration: none; /* Pas de soulignement */
            transition: background-color 0.3s, transform 0.3s; /* Transition fluide */
            display: inline-block; /* Afficher en ligne */
            margin-top: 20px; /* Marge en haut du bouton */
        }

        /* Au survol, assombrir légèrement le bouton et le faire légèrement grossir */
        .btn-facebook:hover {
            background-color: #ffa8f8; /* Couleur légèrement plus foncée */
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <header onclick="window.location.href='http://fdm.com';">
        <span>Miarahaba anao izahay ry Neny</span>
    </header>
    <main>
        <!-- Section pour le carrousel d'images -->
        <section id="scrolling-section">
            <h2>Ho an'ilay Neny Tiako </h2>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="5000"> <!-- Ajout de l'attribut data-interval pour définir l'intervalle de temps -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100 img-fluid rounded" src="image1.jpg" alt="Première image">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100 img-fluid rounded" src="image2.jpg" alt="Deuxième image">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100 img-fluid rounded" src="image3.jpg" alt="Troisième image">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Précédent</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Suivant</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container mt-3">
                <a href="https://www.facebook.com/chocolaterierobert?__cft__[0]=AZX83KIT7qFyMa8E094RmA-jtVl6m3oUbpEM5eVCQRta5YK5Yt2hH_7TtC6m8H6lm5ylpyLXXP-ZKDBhY6P5b9f1mLHTXThpk-gi5fYzmw1F5XrVIK4NvNNWMSSses6ZHQoKqPm7YJeZHXgt8nFAglrAzwFjc9ZGEdy-Y1r3ClfkdFXoOcLzU-LXSvLjGn-mX-VpI2WIfX5dvp4DFqZiiAbz&__tn__=%3C%3C%2CP-R" target="_blank" class="btn btn-facebook btn-lg">Suivez-nous sur Facebook</a>
            </div>
        </section>
    </main>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-3">
                    <a href="mailto:factory@example.com" class="social-icon"><i class="fas fa-envelope"></i></a>
                    <span class="social-info">factory@example.com</span>
                    <a href="tel:+347020565" class="social-icon"><i class="fas fa-phone"></i></a>
                    <span class="social-info">+347020565</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <p>&copy; copyright Nr</p> <!-- Mettez votre nom ou votre entreprise ici -->
                </div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
