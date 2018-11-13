
[![Travis build
status](https://travis-ci.com/muschellij2/mni.svg?branch=master)](https://travis-ci.com/muschellij2/mni)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/mni?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/mni)
[![Coverage
status](https://codecov.io/gh/muschellij2/mni/branch/master/graph/badge.svg)](https://codecov.io/gh/muschellij2/mni)
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mni Package:

The goal of `mni` is to provide provides functions for downloading
magnetic resonace imaging (‘MRI’) templates of humans.

## Installation

You can install `mni` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("muschellij2/mni")
```

Data from <http://nist.mni.mcgill.ca/>:

Copyright (C) 1993-2009 Louis Collins, McConnell Brain Imaging Centre,
Montreal Neurological Institute, McGill University. Permission to use,
copy, modify, and distribute this software and its documentation for any
purpose and without fee is hereby granted, provided that the above
copyright notice appear in all copies. The authors and McGill University
make no representations about the suitability of this software for any
purpose. It is provided “as is” without express or implied warranty. The
authors are not responsible for any data loss, equipment damage,
property loss, or injury to subjects or patients resulting from the use
or misuse of this software package.

Copyright (C) 2016-2018 Yiming Xiao, McConnell Brain Imaging Centre,
Montreal Neurological Institute, McGill University. Permission to use,
copy, modify, and distribute this software and its documentation for any
purpose and without fee is hereby granted, provided that the above
copyright notice appear in all copies. The authors and McGill University
make no representations about the suitability of this software for any
purpose. It is provided “as is” without express or implied warranty. The
authors are not responsible for any data loss, equipment damage,
property loss, or injury to subjects or patients resulting from the use
or misuse of this software package.

``` r
citation("mni")
#> 
#> Mazziotta JC, Toga AW, Evans A, Fox P, Lancaster J (1995). "A
#> probabilistic atlas of the human brain: Theory and rationale for
#> its development: The international consortium for brain mapping
#> (icbm)." _Neuroimage_, *2*(2), 89-101.
#> 
#> Mazziotta J, Toga A, Evans A, Fox P, Lancaster J, Zilles K, Woods
#> R, Paus T, Simpson G, Pike B, others (2001). "A probabilistic
#> atlas and reference system for the human brain: International
#> Consortium for Brain Mapping (ICBM)." _Philosophical Transactions
#> of the Royal Society of London B: Biological Sciences_,
#> *356*(1412), 1293-1322.
#> 
#> Mazziotta J, Toga A, Evans A, Fox P, Lancaster J, Zilles K, Woods
#> R, Paus T, Simpson G, Pike B, others (2001). "A four-dimensional
#> probabilistic atlas of the human brain." _Journal of the American
#> Medical Informatics Association_, *8*(5), 401-430.
#> 
#> Grabner G, Janke AL, Budge MM, Smith D, Pruessner J, Collins DL
#> (2006). "Symmetric atlasing and model based segmentation: an
#> application to the hippocampus in older adults." In _International
#> Conference on Medical Image Computing and Computer-Assisted
#> Intervention_, 58-66. Springer.
#> 
#> Fonov V, Evans AC, Botteron K, Almli CR, McKinstry RC, Collins DL,
#> Group BDC, others (2011). "Unbiased average age-appropriate
#> atlases for pediatric studies." _Neuroimage_, *54*(1), 313-327.
#> 
#> Fonov VS, Evans AC, McKinstry RC, Almli C, Collins D (2009).
#> "Unbiased nonlinear average age-appropriate brain templates from
#> birth to adulthood." _NeuroImage_, S102.
#> 
#> Holmes CJ, Hoge R, Collins L, Woods R, Toga AW, Evans AC (1998).
#> "Enhancement of MR images using registration for signal
#> averaging." _Journal of computer assisted tomography_, *22*(2),
#> 324-333.
#> 
#> Aubert-Broche B, Evans AC, Collins L (2006). "A new improved
#> version of the realistic digital brain phantom." _NeuroImage_,
#> *32*(1), 138-145.
#> 
#> Evans AC, Collins DL, Mills S, Brown E, Kelly R, Peters TM (1993).
#> "3D statistical neuroanatomical models from 305 MRI volumes." In
#> _Nuclear Science Symposium and Medical Imaging Conference, 1993.,
#> 1993 IEEE Conference Record._, 1813-1817. IEEE.
#> 
#> Xiao Y, Fonov V, Chakravarty MM, Beriault S, Al Subaie F, Sadikot
#> A, Pike GB, Bertrand G, Collins DL (2017). "A dataset of
#> multi-contrast population-averaged brain MRI atlases of a
#> Parkinson׳ s disease cohort." _Data in brief_, *12*, 370-379.
#> 
#> Xiao Y, Fonov V, Bériault S, Al Subaie F, Chakravarty MM, Sadikot
#> AF, Pike GB, Collins DL (2015). "Multi-contrast unbiased MRI atlas
#> of a Parkinson’s disease population." _International journal of
#> computer assisted radiology and surgery_, *10*(3), 329-341.
#> 
#> Xiao Y, Beriault S, Pike GB, Collins DL (2012). "Multicontrast
#> multiecho FLASH MRI for targeting the subthalamic nucleus."
#> _Magnetic resonance imaging_, *30*(5), 627-640.
#> 
#> To see these entries in BibTeX format, use 'print(<citation>,
#> bibtex=TRUE)', 'toBibtex(.)', or set
#> 'options(citation.bibtex.max=999)'.
```
