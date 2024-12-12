codestarconnections_enable_module = true
codestarconnections_name          = "codepipeline-tf"
codestarconnections_provider_type = "Bitbucket"

codestarconnections_gitlab_name              = "codepipelines-gitlab"
codestarconnections_gitlab_provider_type     = "GitLabSelfManaged"
codestarconnections_gitlab_host_name         = "gitlab-self-managed"
codestarconnections_gitlab_provider_endpoint = "https://gitlab.generalsoftwareinc.com"

codebuild_validate_name              = "codebuild-tf-validate"
codebuild_validate_description       = "Codebuild para terraform validate"
codebuild_validate_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_validate.yml"
codebuild_validate_environment_image = "hashicorp/terraform:1.7.5"

codebuild_checkov_name              = "codebuild-tf-checkov"
codebuild_checkov_description       = "Codebuild para terraform checkov"
codebuild_checkov_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_checkov.yml"
codebuild_checkov_environment_image = "bridgecrew/checkov:3.2.38"

codebuild_tfsec_name              = "codebuild-tf-tfsec"
codebuild_tfsec_description       = "Codebuild para terraform tfsec"
codebuild_tfsec_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_tfsec.yml"
codebuild_tfsec_environment_image = "aquasec/tfsec:v1.28.5"

codebuild_tflint_name              = "codebuild-tf-tflint"
codebuild_tflint_description       = "Codebuild para terraform tflint"
codebuild_tflint_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_tflint.yml"
codebuild_tflint_environment_image = "wata727/tflint:0.29.1"

codebuild_terrascan_name              = "codebuild-tf-terrascan"
codebuild_terrascan_description       = "Codebuild para terraform terrascan"
codebuild_terrascan_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_terrascan.yml"
codebuild_terrascan_environment_image = "accurics/terrascan:1.14.0"

codebuild_plan_name              = "codebuild-tf-plan"
codebuild_plan_description       = "Codebuild para terraform plan"
codebuild_plan_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_plan.yml"
codebuild_plan_environment_image = "hashicorp/terraform:1.7.5"

codebuild_apply_name              = "codebuild-tf-apply"
codebuild_apply_description       = "Codebuild para terraform apply"
codebuild_apply_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_apply.yml"
codebuild_apply_environment_image = "hashicorp/terraform:1.7.5"

codebuild_complete_apply_name              = "codebuild-tf-complete-apply"
codebuild_complete_apply_description       = "Codebuild para terraform complete_apply"
codebuild_complete_apply_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_complete_apply.yml"
codebuild_complete_apply_environment_image = "public.ecr.aws/l6d1k5l9/terraform-dotnet:latest"

codebuild_install_dotnet_name              = "codebuild-tf-install_dotnet"
codebuild_install_dotnet_description       = "Codebuild para terraform install_dotnet"
codebuild_install_dotnet_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_install_dotnet.yml"

codebuild_sast_front_name              = "codebuild-tf-sast-front"
codebuild_sast_front_description       = "Codebuild para terraform sast_front"
codebuild_sast_front_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_sast_front.yml"
codebuild_sast_front_environment_image = "aws/codebuild/standard:7.0"

codebuild_sast_back_name              = "codebuild-tf-sast-back"
codebuild_sast_back_description       = "Codebuild para terraform sast_back"
codebuild_sast_back_dir_buildspec     = "../auxiliar_files/buildspecs/buildspec_sast_back.yml"
codebuild_sast_back_environment_image = "aws/codebuild/standard:7.0"


telegram_credentials_secret_name = "telegram_credentials"