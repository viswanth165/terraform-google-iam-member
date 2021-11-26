//required variables
variable "member" {
  description = "Identities that will be granted the privilege in role."
  type        = set(string)
}

variable "role" {
  description = "The role that should be applied."
  type        = string
}

variable "project" {
  description = " The project id of the target project."
  type        = string
}

//optional variables
variable "policy_data" {
  description = "The google_iam_policy data source that represents the IAM policy that will be applied to the project."
  type        = string
}


variable "condition_expression" {
  description = "Textual representation of an expression in Common Expression Language syntax."
  type        = string
  default     = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
}

variable "condition_title" {
  description = "A title for the expression."
  type        = string
  default     = "Condition for  the user"
}

variable "condition_description" {
  description = " An optional description of the expression."
  type        = string
  default     = "when hovered over it in a UI."
}
