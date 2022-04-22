env                  = "production"
records              = { "www." : { "domain" = "{{ cookiecutter.domain_name }}", "type" = "CNAME", "value" = "@", "ttl" = 1800 } }
cors_allowed_origins = ["{{ cookiecutter.domain_name }}"]
