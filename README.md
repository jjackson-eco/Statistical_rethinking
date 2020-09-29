# John's notes on Statistical Rethinking

#### 2020-09-29
#### John Jackson

---

Here I have put together my lecture notes from the Statistical Rethinking book (second edition) by Professor Richard McElreath, which can be found [here](https://xcelab.net/rm/statistical-rethinking/). The note files are split by chapters of the book. However, the note headings follow the lectures from Winter 2019 that are presented here on [YouTube](https://www.youtube.com/channel/UCNJK6_DZvcMqNSzQdEkzvzA), and there are some slight divergences between the lectures and the chapters of the book - particularly later on.

Due to the computation involved in running the Markov chains for GLM and mixed effects models, the notes are split between 3 `R markdown` files:

1. Chapters 1-8 - `Statistical_Rethinking_1_8.Rmd`
2. Chapters 9-12 - `Statistical_Rethinking_9_12.Rmd`
3. Chapters 13 & 14 - `Statistical_Rethinking_13_14.Rmd`

These markdown files are also accompanied by their resultant html files.

To run the markdown files yourself, you will need to have all of the following packages installed:

```
library(tidyverse)  
library(rmarkdown)
library(rmdformats)
library(gridExtra)
library(ggridges)
library(rstan) # Follow the instructions at https://mc-stan.org/users/interfaces/rstan for installation
library(rethinking)
library(dagitty)
```

### Happy Bayesian-ing :)

---



