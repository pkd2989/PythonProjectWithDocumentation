pdflatex --output-directory=./outputs -jobname=%1 ./presentation/presentation.tex
biber ./outputs/%1
pdflatex --output-directory=./outputs -jobname=%1 ./presentation/presentation.tex
copy .\outputs\%1.pdf .\%1.pdf