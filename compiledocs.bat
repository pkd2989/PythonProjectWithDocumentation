pdflatex --output-directory=./outputs -jobname=%1 ./documentation/main.tex
biber ./outputs/%1
pdflatex --output-directory=./outputs -jobname=%1 ./documentation/main.tex
pdflatex --output-directory=./outputs -jobname=%2 ./presentation/presentation.tex
biber ./outputs/%2
pdflatex --output-directory=./outputs -jobname=%2 ./presentation/presentation.tex
copy .\outputs\%1.pdf .\%1.pdf
copy .\outputs\%2.pdf .\%2.pdf
