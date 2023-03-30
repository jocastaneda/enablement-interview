layout: true
class: middle, compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide2

## Declaring Output Values
???
Explain uses
* child module to expose attributes to parent
* root module to print values to CLI after `terraform apply`
* remote state can be accessed by other configurations
* can't access without knowing how to declare and here is how...

--

```terraform
output "instance_ip_addr" {
  value = aws_instance.server.private_ip
  description = "The private IP address of the main server instance."
}
```

Optional values
- `description` - to best describe the purpose
- `sensitive` - to hide messages from `terraform plan` and `terraform apply`
- `depends_on` - to be used as last resort and always include comment

???

Explain: what is on screen, what it means, how it's used, and what each part does. 

Could ask audience who is familiar with what programming languages and make it relate

"think of this as a sort of JSON object, a Python dictionary, or C structure in that we declare it with opening and closing brackets, and inside are key value pairs. Very much like an associative array"

---
