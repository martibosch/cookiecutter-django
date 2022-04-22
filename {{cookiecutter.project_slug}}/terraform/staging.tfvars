env                  = "staging"
records              = { "www." : { "domain" = "{{ cookiecutter.staging_domain_name }}", "type" = "CNAME", "value" = "@", "ttl" = 1800 } }
cors_allowed_origins = ["{{ cookiecutter.staging_domain_name }}"]
