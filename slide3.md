layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide3

## Accessing Outputs

### Retrieving from terminal
```terraform
$ terraform output
lb_url = "http://lb-5YI-project-alpha-dev-2144336064.us-east-1.elb.amazonaws.com/"
vpc_id = "vpc-004c2d1ba7394b3d6"
web_server_count = 4
```
???
Could also change to match customer and could give other examples which could lead to getting single value

--

### Getting a single value
```terraform
$ terraform output lb_url
"http://lb-5YI-project-alpha-dev-2144336064.us-east-1.elb.amazonaws.com/"
```

???
Emphasize: You can use this data to configure other parts of your infrastructure with automation tools, or even as a data source for other Terraform workspaces

---
