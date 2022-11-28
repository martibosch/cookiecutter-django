tfc_org_name           = "{{ cookiecutter.tfc_org_name }}"
project_slug           = "{{ cookiecutter.project_slug }}"
ssh_key_name           = "{{ cookiecutter.project_slug }}"
docker_compose_version = "{{ cookiecutter.docker_compose_version }}"
domain_name            = "{{ cookiecutter.domain_name }}"
gh_repo_name           = "{{ cookiecutter.project_slug }}"
droplet_user           = "{{ cookiecutter.droplet_user }}"
resource_prefix        = "{{ cookiecutter.project_slug }}"
droplet_image          = "{{ cookiecutter.droplet_image }}"
do_region              = "{{ cookiecutter.do_region }}"
droplet_size_stage     = "{{ cookiecutter.droplet_size_stage }}"
env_file_map_stage     = { production_django = ".envs/.production/.django", production_postgres = ".envs/.production/.postgres", production_traefik = ".envs/.production/.traefik", staging_django = ".envs/.staging/.django", staging_traefik = ".envs/.staging/.traefik" }
droplet_size_prod      = "{{ cookiecutter.droplet_size_prod }}"
env_file_map_prod      = { production_django = ".envs/.production/.django", production_postgres = ".envs/.production/.postgres", production_traefik = ".envs/.production/.traefik" }
do_project_name        = "{{ cookiecutter.project_slug }}"
do_project_description = "{{ cookiecutter.description | escape}}"

# tokens
do_token     = ""
gh_token     = ""
tf_api_token = ""
