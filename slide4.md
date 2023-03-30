layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide4

## Custom Condition checks
???
conditional paychecks? ok, not those but it would be nice, right? This is more to help capture assumptions

--

- Input Variable Validation
???
* Note: Input variable validation is available in Terraform v0.13.0 and later.
* Evaluates to `true` or `false`

--

- Pre- and Post- conditions
???
* Note: Preconditions and postconditions are available in Terraform v1.2.0 and later.
* used for resources, data sources, and outputs

--

- Error Messages
???
* all must include the `error_message` argument and can be any expression that evaluates to a string.
* literal strings
* heredocs
* template expressions

--

???


---

