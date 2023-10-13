
.PHONY: inst remove

inst:
	R CMD INSTALL .

check:
	R CMD CHECK .

remove:
	R CMD REMOVE pcrcoal

