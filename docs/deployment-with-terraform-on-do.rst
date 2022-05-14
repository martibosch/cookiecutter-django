Deployment with Terraform on DigitalOcean
=========================================

.. index:: deployment, terraform, digitalocean


Prerequisites
-------------

* Terraform 1.1+


First-time setup
----------------

* Register a domain and point it to the DigitalOcean name servers, e.g., see https://docs.digitalocean.com/tutorials/dns-registrars

* In ``.envs/.production/.django``, ensure that the ``DJANGO_AWS_S3_REGION_NAME`` and ``DJANGO_AWS_S3_ENDPOINT_URL`` settings are set properly, and then add the S3 access keys in the following lines::

    DJANGO_AWS_ACCESS_KEY_ID=
    DJANGO_AWS_SECRET_ACCESS_KEY=

* From the ``terraform`` directory, initalize terraform with the following command, which should only be run once (unless the provider/module versions change)::

    cd terraform
    terraform init

* Then, create a workspace for the ``staging`` and ``production`` environments by running the command below (which should only be run once)::

    terraform workspace new <env>  # replace `<env>` with the desired environment

Deployment
----------

To deploy the changes, first select the desired environment (replace ``<env>`` accordingly in the commands below)::

    terraform workspace select <env>

Then, use the following command to see the planned changes::

    terraform plan -var-file=<env>.tfvars \
        -var "do_token=${DO_PAT}" \
        -var "ssh_key_name=${DO_KEY_NAME}" \
        -var "spaces_access_id=${DO_ACCESS_ID}" \
        -var "spaces_secret_key=${DO_SECRET_KEY}"

and then apply them::

     terraform plan -var-file=<env>.tfvars \
        -var "do_token=${DO_PAT}" \
        -var "ssh_key_name=${DO_KEY_NAME}" \
        -var "spaces_access_id=${DO_ACCESS_ID}" \
        -var "spaces_secret_key=${DO_SECRET_KEY}"
