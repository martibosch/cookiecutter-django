tfc_org_name       = "{{ cookiecutter.tfc_org_name }}"
project_slug       = "{{ cookiecutter.project_slug }}"
env_file_map_stage = { prod_django = "../../../.envs/.production/.django", prod_postgres = "../../../.envs/.production/.postgres", prod_traefik = "../../../.envs/.production/.traefik", stage_django = "../../../.envs/.staging/.django", stage_traefik = "../../../.envs/.staging/.traefik" }
env_file_map_prod  = { prod_django = "../../../.envs/.production/.django", prod_postgres = "../../../.envs/.production/.postgres", prod_traefik = "../../../.envs/.production/.traefik" }

# tokens
tf_api_token = "" # Terraform Cloud API token
