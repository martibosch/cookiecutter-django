Deployment with Terraform on DigitalOcean
=========================================

.. index:: deployment, terraform, digitalocean


Prerequisites
-------------

* Terraform 1.1+


First-time setup
----------------

From the ``terraform`` directory, initalize terraform with the following command, which should only be run once (unless the provider/module versions change)::

    cd terraform
    terraform init

Then, create a workspace for the ``staging`` and ``production`` environments by running the command below (which should only be run once)::

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
