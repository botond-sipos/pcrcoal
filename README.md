pcrcoal
=======

![demo](https://raw.github.com/sbotond/pcrcoal/master/misc/demo.png)

<tt>pcrcoal</tt> is an <tt>R</tt> package implementing the coalescent approach to PCR simulation developed by Weiss and von Haeseler ([NAR, 1997](http://dx.doi.org/10.1093/nar/25.15.3082)). The package reports the simulated genealogies as <tt>phylo</tt> objects compatible with the [ape](http://cran.r-project.org/web/packages/ape) package. The reported branch lengths are equal to the number of the replications occured in the respective lineage.

See the package [reference manual](http://cran.r-project.org/web/packages/pcrcoal/pcrcoal.pdf) for more information.

<tt>pcrcoal</tt> was brought to you by the [Goldman group](http://www.ebi.ac.uk/goldman) from [EMBL-EBI](http://www.ebi.ac.uk).

References
----------

Weiss, G, von Haeseler, A (1997) A coalescent approach to the polymerase chain reaction. NAR 25(15): 3082-3087 [http://dx.doi.org/10.1093/nar/25.15.3082](http://dx.doi.org/10.1093/nar/25.15.3082)

Installation
------------
The most practical way to install the package is using the `devtools` package:

```bash
library(devtools)
install_github("botond-sipos/pcrcoal")
```

Example usage
-------------

```R
library(pcrcoal)
# Construct a PCRcoal object
# and specify the experimental conditions:
sim <-PCRcoal(
initial.size    =5,
sample.size     =10,
nr.cycles       =20,
efficiencies    =c(rep(0.1, 30))
)

##
## Method: sample.tree
##

 # Sample a coalescent tree:
tree <- sample.tree(sim)

# Print tree info:
print(tree)

# Plot the tree:
plot(tree)

##
## Method: sample.tnt
##

# Sample a coalescent tree with subsample sizes and
# size trajectories:
res <- sample.tnt(sim)

# Print subsample sizes:
print(res$subsamples)

# Print size trajectories:
print(res$trajectories)

# Print tree info:
print(res$phylo)

##
## Method: sample.trs
##

# Sample subsample sizes and size trajectories:
res <- sample.trs(sim)

# Print subsample sizes:
print(res$subsamples)

# Print size trajectories:
print(res$trajectories)
```
