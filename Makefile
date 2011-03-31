all: cryptography.py tests.py cryptography.pdf

check: tests.py cryptography.py
	python tests.py

cryptography.latex: cryptography.nw
	noweave -index cryptography.nw > cryptography.latex

cryptography.pdf: cryptography.latex
	pdflatex cryptography.latex

cryptography.py: cryptography.nw
	notangle -Rcryptography.py cryptography.nw > cryptography.py

tests.py: cryptography.nw
	notangle -Rtests.py cryptography.nw > tests.py