
.PHONY: inst remove check pkg

pkg:
	R CMD BUILD .

inst:
	R CMD INSTALL .

check:
	R CMD CHECK .

remove:
	R CMD REMOVE pcrcoal

