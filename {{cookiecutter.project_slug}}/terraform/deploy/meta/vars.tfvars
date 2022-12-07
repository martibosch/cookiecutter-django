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
droplet_size_prod      = "{{ cookiecutter.droplet_size_prod }}"
do_project_name        = "{{ cookiecutter.project_slug }}"
do_project_description = "{{ cookiecutter.description | escape}}"

# tokens
do_token             = "" # DigitalOcean API token
do_spaces_access_id  = "" # DigitalOcean spaces access key ID
do_spaces_secret_key = "" # DigitalOcean spaces secret key
gh_token             = "" # GitHub token
tf_api_token         = "" # Terraform Cloud API token
