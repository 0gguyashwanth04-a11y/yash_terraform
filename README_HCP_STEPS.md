# Quick HCP (Terraform Cloud) setup steps

1. Push this repository to GitHub (or your VCS).
2. In Terraform Cloud (https://app.terraform.io):
   - Create an Organization (if not already).
   - Create a Workspace -> Choose 'Version Control Workflow' -> Connect to this repo and branch.
3. In the workspace, go to Variables:
   - Add `aws_access_key_id` (env var) and `aws_secret_access_key` (env var) OR configure an AWS VCS integration.
   - Add terraform variables:
     - `db_password` (sensitive)
     - `admin_cidr`
     - `aws_region`
4. Queue a plan (or push a commit to trigger an automatic run).
5. After apply finishes, check Outputs in the run for `alb_dns_name` and `rds_endpoint`.
