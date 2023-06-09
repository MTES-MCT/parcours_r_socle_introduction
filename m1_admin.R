# Commande pour générer à la main le book du module 1

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::epub_book")

# Erreur à la compilation
# bookdown::render_book("index.Rmd", "bookdown::pdf_book")

# Commande pour générer un support pdf du module
propre.rpls::creer_pdf_book(
  chemin_book = "_book/", nom_pdf = "M1_Debuter_avec_R_et_RStudio.pdf",
  pages_html = c(
    "index.html",   
    "r-son-écosystème-et-ses-possibilités.html",                            
    "présentation-de-linterface-et-premières-manipulations.html",            
    "bien-commencer.html",                                                   
    "mon-premier-jeu-de-données.html",                                       
    "première-manipulation-des-données.html" ,                               
    "premiers-traitements-statistiques.html",                                
    "premiers-graphiques.html",                                    
    "sauvegarder-son-travail.html" ,
    "aller-plus-loin-avec-les-objets-et-la-programmation-fonctionnelle.html",
    "exercices-corrigés.html",                                    
    "exercices-pour-r-studio.html"
  ))

imports <- sort(c("bookdown", attachment::att_from_rmds(path = ".", pattern = ".Rmd", recursive = FALSE, inline = TRUE)))
attachment::att_to_desc_from_is(
  path.d = "DESCRIPTION",
  imports = imports, suggests = NULL, 
  must.exist = FALSE
)

