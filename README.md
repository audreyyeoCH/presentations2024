# presentations2024

## PSI 2024, Amsterdam, NL, Effectenbeurszaale, Beurs Van Berlage Conference Centre

The code for the above presentation is in `index2.qmd` which can theoretically be re-rendered to `index2.html`
Note : This presentation uses colour bind templates for graps and has ALT text for figures. 
To render `index2.qmd` (the PSI 2024 presentation for `phase1b`) please also install `phase1b` package first.

```{r}
library(devtools)
devtools::install_github("https://github.com/Genentech/phase1b")
library(phase1b)
```
This HEX sticker was voted at the PSI 2024! Thank you all! And nice one : )
:::
![phase1b HEX sticker](images/hex3.png)
:::

## useR!2024, Grand Wyndham, Salzburg, Austria, July 2024

TBC

## PHUSE 2024, Roche Basel Headquarters, Auditorium B7, September 2024

The abstract of the talk above is as follows:

**Gearing our industry Statisticians up for Software success : A phase1b journey.**

Trial statisticians write software and are well placed to contribute to analytical solutions that inform business and clinical decision making. Early conversations about incorporating software engineering competence in a trials statistician’s (Sabanés Bové, 2023) already impressive toolbox have started to emerge with the use of the common language of R. I share my personal experience about the actions and attitudes to achieve a state-of-art solution called phase1b and highlight good software engineering principles and ways of working. The package phase1b (Yeo et al, 2024)  is a flexible toolkit that evaluates efficacy and futility analysis within the Bayesian framework for early Oncology trials. The R package informs decision making on whether the drug of concern warrants further investment. Since the evaluation of the efficacy and futility impacts business and clinical decisions in pharma, it is advantageous that the industry strives to understand and create the conditions for more Software success such as the phase1b.		
				 	 	 		
_References_

Yeo, A T, Sabanés Bové D, Elze M, Pourmohamad T, Zhu J, Lymp J, Teterina A (2024).
Phase1b : Calculations for decisions on Phase 1b clinical trials. R package
version 1.0.0, < https://genentech.github.io/phase1b>
(To be published prior to conference)

Sabanés Bové D (2023), Why we Need to Improve Software Engineering in Biostatistics - A Call to Action, 
R Pharma Keynote <https://rinpharma.com/post/2023-10-03-keynotes/>
