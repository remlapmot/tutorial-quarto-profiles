# Separate documents for each language
quarto render --profile r-questions -o tutorial-r-questions.html
quarto render --profile r-solutions -o tutorial-r-solutions.html

quarto render --profile python-questions -o tutorial-python-questions.html
quarto render --profile python-solutions -o tutorial-python-solutions.html

quarto render --profile stata-questions -o tutorial-stata-questions.html
quarto render --profile stata-solutions -o tutorial-stata-solutions.html

quarto render --profile julia-questions -o tutorial-julia-questions.html
quarto render --profile julia-solutions -o tutorial-julia-solutions.html

# combined language document
quarto render tutorial-combined.qmd --profile combined-solutions -o tutorial-combined-solutions.html --execute --cache-refresh
quarto render tutorial-combined.qmd --profile combined-questions -o tutorial-combined-questions.html
