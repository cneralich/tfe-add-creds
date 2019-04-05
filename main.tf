provider "tfe" {
  version = "<= 0.7.0"
  token = "${var.token}"
}

resource "tfe_variable" "gcp_credentials" {
  count = "${length(var.workspace_ids)}"
  key          = "GOOGLE_CREDENTIALS"
  value        = "${var.gcp_credentials}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "aws_secret_access_key" {
  count        = "${length(var.workspace_ids)}"
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "${var.aws_secret_access_key}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "aws_access_key_id" {
  count        = "${length(var.workspace_ids)}"
  key          = "AWS_ACCESS_KEY_ID"
  value        = "${var.aws_access_key_id}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "arm_subscription_id" {
  count        = "${length(var.workspace_ids)}"
  key          = "ARM_SUBSCRIPTION_ID"
  value        = "${var.arm_subscription_id}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "arm_client_secret" {
  count        = "${length(var.workspace_ids)}"
  key          = "ARM_CLIENT_SECRET"
  value        = "${var.arm_client_secret}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "arm_tenant_id" {
  count        = "${length(var.workspace_ids)}"
  key          = "ARM_TENANT_ID"
  value        = "${var.arm_tenant_id}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "arm_client_id" {
  count        = "${length(var.workspace_ids)}"
  key          = "ARM_CLIENT_ID"
  value        = "${var.arm_client_id}"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}

resource "tfe_variable" "env_vars" {
  count        = "${length(var.workspace_ids)}"
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${var.organization}/${element(var.workspace_ids, count.index)}"
}
