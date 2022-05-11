env                  = "staging"
domain               = "{{ cookiecutter.domain_name }}"
records              = { "{{ cookiecutter.staging_domain_name }}." : { "domain" = "{{ cookiecutter.domain_name }}", "type" = "A", "value" = "droplet", "ttl" = 1800 } }
cors_allowed_origins = ["{{ cookiecutter.staging_domain_name }}"]
