# Separate documents for each language
quarto render --profile r-questions
quarto render --profile r-solutions

quarto render --profile python-questions
quarto render --profile python-solutions

quarto render --profile stata-questions
quarto render --profile stata-solutions

quarto render --profile julia-questions
quarto render --profile julia-solutions

# combined language document
rm -rf .quarto/embed
quarto render --profile combined-questions
rm -rf .quarto/embed
quarto render --profile combined-solutions

# Demonstrate sort of bug - render questions first but don't clear .quarto/embed generates incomplete solutions document
rm -rf .quarto/embed
quarto render --profile combined-questions
quarto render --profile combined-solutions

# Example with just R and Python
## correct second render
rm -rf .quarto/embed
quarto render --profile combined2-questions
rm -rf .quarto/embed
quarto render --profile combined2-solutions
## incorrect second render
rm -rf .quarto/embed
quarto render --profile combined2-questions
quarto render --profile combined2-solutions

# render the webpage for the repo github pages site
quarto render index.qmd
