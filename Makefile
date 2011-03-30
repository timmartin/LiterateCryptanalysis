all: cryptography.html cryptography.py tests.py

check: tests.py
	python tests.py

cryptography.html: cryptography.nw
	noweave -filter l2h -index -html cryptography.nw > cryptography.html

cryptography.py: cryptography.nw
	notangle -Rcryptography.py cryptography.nw > cryptography.py

tests.py: cryptography.nw
	notangle -Rtests.py cryptography.nw > tests.py