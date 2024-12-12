# Service role
resource "aws_iam_role" "service_role" {
  count              = var.create_default_service_role ? 1 : 0
  name               = "${var.name}-service-role"
  assume_role_policy = element(data.aws_iam_policy_document.codebuild_assume_role_policy.*.json, 0)
}

# Add extra polcies
resource "aws_iam_role_policy" "codebuild_role_extra_policies" {
  count  = var.create_default_service_role ? 1 : 0
  role   = element(aws_iam_role.service_role.*.name, 0)
  policy = element(data.aws_iam_policy_document.codebuild_role_extra_policies.*.json, 0)
}

####################
# Policy documents #
####################

# Assume Role
data "aws_iam_policy_document" "codebuild_assume_role_policy" {
  count = var.create_default_service_role ? 1 : 0
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["codebuild.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
    ]
  }
}

# Extra policies
data "aws_iam_policy_document" "codebuild_role_extra_policies" {
  count = var.create_default_service_role ? 1 : 0
  statement {
    effect = "Allow"

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = [
      "arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/codebuild/${var.name}",
      "arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/codebuild/${var.name}:*",
    ]
  }

  statement {
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:GetObjectVersion",
      "s3:PutObject",
      "s3:GetBucketAcl",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::codepipeline-*",
    ]
  }

  statement {
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:GetObjectVersion",
      "s3:PutObject",
      "s3:GetBucketAcl",
      "s3:GetBucketLocation",
      "s3:*"
    ]

    resources = [
      "arn:aws:s3:::codebuild-*",
    ]
  }

  statement {
    effect = "Allow"

    actions = [
      "s3:*"
    ]

    resources = [
      "arn:aws:s3:::*state*",
    ]
  }

  statement {
    effect = "Allow"
    actions = [
      "ec2:CreateNetworkInterface",
      "ec2:DeleteNetworkInterface",
      "ec2:Describe*",
    ]
    resources = ["*"]
  }

  statement {
    effect = "Allow"
    actions = [
      "ec2:CreateNetworkInterfacePermission"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "codebuild:CreateReportGroup",
      "codebuild:CreateReport",
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "amplify:StartJob",
      "amplify:GetJob"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "secretsmanager:GetRandomPassword",
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:ListSecretVersionIds"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "sts:GetServiceBearerToken"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "codeartifact:*"
    ]
    resources = ["*"]
  }
}