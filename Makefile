COQMFFLAGS := -Q . LF  

ALLVFILES := Logic.v LogicTest.v IndProp.v IndPropTest.v 
#Basics.v Induction.v Lists.v Poly.v Tactics.v

build: Makefile.coq
	$(MAKE) -f Makefile.coq

clean::
	if [ -e Makefile.coq ]; then $(MAKE) -f Makefile.coq cleanall; fi
	$(RM) $(wildcard Makefile.coq Makefile.coq.conf) imp.ml imp.mli imp1.ml imp1.mli imp2.ml imp2.mli

Makefile.coq:
	coq_makefile $(COQMFFLAGS) -o Makefile.coq $(ALLVFILES)

autograde: Logic.vo IndProp.vo
	coqc -Q . LF LogicTest.v
	coqc -Q . LF IndPropTest.v

turnin:
	git add .
	git commit -m "turnin"
	git push -u origin main

-include Makefile.coq

.PHONY: build clean turnin autograde
