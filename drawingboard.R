
options(kableExtra.html.bsTable = TRUE)

use_case <- data.frame(
  Likelihood = c(
    "$X \\mid \\pi \\sim \\text{Bin}(n, \\pi)$",
    "$X \\mid \\pi \\sim \\text{Geom}(\\pi)$",
    "$X \\mid \\lambda \\sim \\text{Pois}(e \\cdot \\lambda)$",
    "$X \\mid \\lambda \\sim \\text{Exp}(\\lambda)$",
    "$X \\mid \\mu \\sim \\text{Normal}(\\mu, \\sigma^2)$",
    "$X \\mid \\sigma^2 \\sim \\text{Normal}(\\mu, \\text{known}, \\sigma^2)$"
  ),
  `Conjugate prior distribution` = c(
    "$\\pi \\sim \\text{Beta}(\\alpha, \\beta)$",
    "$\\pi \\sim \\text{Beta}(\\alpha, \\beta)$",
    "$\\lambda \\sim \\text{Gamma}(\\alpha, \\beta)$",
    "$\\lambda \\sim \\text{Gamma}(\\alpha, \\beta)$",
    "$\\mu \\sim \\text{Normal}(\\nu, \\tau^2)$",
    "$\\sigma^2 \\sim \\text{InverseGamma}(\\alpha, \\beta)$"
  ),
  `Posterior Distribution` = c(
    "$\\pi \\mid x \\sim \\text{Beta}(\\alpha + x, \\beta + n - x)$",
    "$\\pi \\mid x \\sim \\text{Beta}(\\alpha + 1, \\beta + x - 1)$",
    "$\\lambda \\mid x \\sim \\text{Gamma}(\\alpha + x, \\beta + e)$",
    "$\\lambda \\mid x \\sim \\text{Gamma}(\\alpha + 1, \\beta + x)$",
    "$\\mu \\mid x \\sim \\text{Normal}(\\nu + \\frac{\\tau^2}{\\sigma^2}x, \\frac{1}{\\frac{1}{\\tau^2} + \\frac{1}{\\sigma^2}})$",
    "$\\sigma^2 \\mid x \\sim \\text{InverseGamma}(\\alpha + \\frac{1}{2}, \\beta + \\frac{1}{2}(x - \\mu)^2)$"
  )
)

use_case2 <- kableExtra::kable(use_case, escape = FALSE)
# use_case2 %>% kableExtra::kable_styling()
use_case2
```{r, warning = FALSE, echo = FALSE, results='asis'}
#| fig-alt: "dd"
options(kableExtra.html.bsTable = TRUE)
use_case <- data.frame( Likelihood = c(
  "$x \\mid \\pi \\sim Bin(n,\\pi)$",
  "$X \\mid \\pi\\sim Geom(\\pi)$",
  "$X \\mid \\lambda \\sim Pois( e, \\lambda)$",
  "$X \\mid \\lambda \\sim Exp(\\lambda)$",
  "$X \\mid \\mu \\sim Normal( \\mu, \\sigma^{2})$",
  "$X \\mid \\sigma^{2} \\sim Normal( \\mu, known, \\sigma^{2})$"),
  `Conjugate prior distribution` = c(
    "$\\pi \\sim Beta(\\alpha, \\beta)$", 
    "$\\pi \\sim Beta(\\alpha, \\beta)$",
    "$\\lambda \\sim Gamma(\\alpha, \\beta)$",
    "$\\lambda \\sim Gamma(\\alpha, \\beta)$",
    "$\\mu \\sim Normal(v, \\tau)$",
    "$\\pi \\sim InverseGamma(\\alpha, \\beta)$"),
  `Posterior Distribution` = c(
    "$\\pi \\mid x \\sim Beta(\\alpha + x, \\beta + n - x)$", 
    "$\\pi \\mid x \\sim Beta(\\alpha, \\beta)$", 
    "$\\lambda \\mid x \\sim Beta(\\alpha, \\beta)$", 
    "$\\lambda \\mid x \\sim Beta(\\alpha, \\beta)$",
    "$\\pi \\mid x \\sim Beta(\\alpha, \\beta)$",
    "$\\sigma^{2}$"
  ) ) 
# use_case
use_case2 <- kableExtra::kable(use_case, escape = FALSE) 
# use_case2 %>% kable_styling()
use_case2 
# use_case2 %>% kable_styling(font_size = 12)
# %>%  
#   kbl(align = "c",
#       caption =
#         "Comparing Frequentist and Bayesian approaches") 
# %>%
#   kable_styling()
# Source : https://medium.com/@roshmitadey/frequentist-v-s-bayesian-statistics-24b959c96880
```

# 

```{r, warning = FALSE, eval = FALSE, echo = FALSE}
#| fig-alt: "dd"

data.frame( Likelihood = c(
  "$ X | \\pi  Bin( n, \\pi )$", 
  "$ X | \\pi ~ Geom(\\pi)$",
  "$ X | \\lambda ~ Pois( e, \\lambda)$",
  "$ X | \\lambda ~ Exp(\\lambda)$",
  "$ X | \\mu ~ Normal( \\mu, \\sigma^{2})$",
  "$ X | \\sigma^{2} ~ Normal( \\mu, known, \\sigma^{2})$"),
  `Conjugate prior distribution` = c(
    "$\\pi  Beta(\\alpha, \\beta)$", 
    "$\\pi  Beta(\\alpha, \\beta)$",
    "$\\lambda  Gamma(\\alpha, \\beta)$",
    "$\\lambda  Gamma(\\alpha, \\beta)$",
    "$\\mu  Normal(v, \\tau)$",
    "$\\pi  InverseGamma(\\alpha, \\beta)$"),
  Prior = c("",
            "",
            "",
            "",
            "",
            ""),
  `Posterior Distribution` = c(
    "$\\pi | x  Beta(\\alpha + x, \\beta + n - x)$", 
    "$\\pi | x  Beta(\\alpha, \\beta)$", 
    "$\\lambda | x  Beta(\\alpha, \\beta)$", 
    "$\\lambda | x  Beta(\\alpha, \\beta)$",
    "$\\pi  Beta(\\alpha, \\beta)$",
    "$\\sigma^{2}  InverseGamma(\\alpha + frac{1}{2}, \\beta + frac{1}{2}(x - $\\mu)^{2})$"
  ) ) -> use_case

use_case %>% 
  kbl(align = "c", 
      caption = 
        "Comparing Frequentist and Bayesian approaches", escape = FALSE) 
# %>% 
# kable_styling()
# Source : https://medium.com/@roshmitadey/frequentist-v-s-bayesian-statistics-24b959c96880
```## Graphical representation of the updated Posterior{.smaller}

-   Prior parameters are $\alpha$ = 0.6, $\beta$ = 0.4
-   Updated Posterior parameters are $\alpha$ = 16.6 and $\beta$ = 7.4

# Parametric distribution : Beta Distribution{.smaller}

- X support is between 0 and 1 : Ideal for modeling response rates

```{r}
example_beta = 2
example_alpha = 4

phase1b::plotBeta(alpha = example_alpha, beta = example_beta)

phase1b::plotBeta(alpha = example_alpha*10, beta = example_beta*10)

phase1b::plotBeta(alpha = example_alpha*20, beta = example_beta*20)
```
```{r}
# 2 mins
# The benefit of a Bayesian approach is the possibility to account for prior data (Thall &amp; Simon,
# 1994) in that a new drug may have shown some signals of efficacy owing to its proposed
# mode of action, or similar activity based on prior data.
# show graph of go, stop, eval zones 
## Terminology

# - A "look" is a stop
# - A stop is when a rule is applied
# - The rule is specified for Go, Stop or Evaluate (Grey zone)
# - If the rule is met, the result is Go, Stop or Evaluate (Grey zone)
# - Rules are applied at interim or final 
# - Go = Success = Efficacious
# - Stop = Failure = Futile
# - Rule = Criteria, e.g. Go rule is a Go Criteria
```