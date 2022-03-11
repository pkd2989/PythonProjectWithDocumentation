pdflatex --output-directory=./outputs -jobname=%1 ./documentation/main.tex
biber ./outputs/%1
pdflatex --output-directory=./outputs -jobname=%1 ./documentation/main.tex
copy .\outputs\%1.pdf .\%1.pdf