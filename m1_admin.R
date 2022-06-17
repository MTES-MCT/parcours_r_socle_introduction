# Commande pour générer à la main le book du module 1

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::epub_book")

# Erreur à la compilation
# bookdown::render_book("index.Rmd", "bookdown::pdf_book")
pagedown::chrome_print(input = "index.rmd")

# Commande pour générer un support pdf du module
propre.rpls::creer_pdf_book(
  chemin_book = "_book/", nom_pdf = "M1_Debuter_avec_R_et_RStudio.pdf",
  pages_html = c(
    "index.html",
    "bien-commencer.html",
    "package-ggplot2.html",
    "le-mapping.html",
    "les-formes-géométriques.html",
    "lhabillage-simple.html",
    "les-thèmes.html",
    "les-scales.html",
    "la-mise-en-page-de-plusieurs-graphiques.html",
    "les-facettes.html",
    "exporter-un-graphique.html",
    "créer-des-cartes-avec-ggplot2.html",
    "animer-ses-graphiques-ggplot-avec-gganimate.html",
    "créer-des-graphiques-et-cartes-pour-le-web.html",
    "créer-des-tableaux-avec-kable-et-kable-extra.html",
    "ressources.html",
    "exercices-et-corrections.html"
  ))