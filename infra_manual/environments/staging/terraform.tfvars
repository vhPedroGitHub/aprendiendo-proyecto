codestarconnections_name                      = "codepipelines-gitlab"
codepipeline_tf_push_enable_module            = true
codepipeline_tf_push_name                     = "codepipeline-tf-push-staging"
codepipeline_tf_push_source_branch            = "main"
codepipeline_tf_push_full_repository_id       = "alivi-group/Vision"
codepipeline_tf_push_stages = [
  {
    name = "Validation"
    action = [{
      name             = "tf_validate"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceOutput"]
      output_artifacts = ["ValidateArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-validate"
      }
      } #,
      # {
      #   name             = "tf_checkov"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["CheckovArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-checkov"
      #   }
      # },
      # {
      #   name             = "tf_tfsec"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TfsecArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-tfsec"
      #   }
      # },
      # {
      #   name             = "tf_tflint"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TflintArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-tflint"
      #   }
      # },
      # {
      #   name             = "tf_terrascan"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TerrascanArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-terrascan"
      #   }
      # }
    ]
  },
  # {
  #   name = "Plan"
  #   action = [{
  #     name             = "Build"
  #     category         = "Build"
  #     owner            = "AWS"
  #     provider         = "CodeBuild"
  #     input_artifacts  = ["SourceOutput"]
  #     output_artifacts = ["BuildArtifact"]
  #     version          = "1"
  #     run_order        = 1
  #     configuration = {
  #       ProjectName = "codebuild-tf-plan"
  #     }
  #   }]
  # },
  # {
  #   name = "Manual"
  #   action = [{
  #     name             = "Manual"
  #     category         = "Approval"
  #     owner            = "AWS"
  #     provider         = "Manual"
  #     version          = "1"
  #     input_artifacts  = []
  #     output_artifacts = []
  #     configuration = {}
  #     run_order        = 1
  #   }]
  # },  
  # {
  #   name = "Apply"
  #   action = [{
  #     name             = "tf_apply"
  #     category         = "Build"
  #     owner            = "AWS"
  #     provider         = "CodeBuild"
  #     input_artifacts  = ["BuildArtifact"]
  #     output_artifacts = ["AppliedArtifact"]
  #     version          = "1"
  #     run_order        = 1
  #     configuration = {
  #       ProjectName = "codebuild-tf-apply"
  #     }
  #   }]
  # },
  {
    name = "Apply"
    action = [{
      name             = "tf_complete_apply"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceOutput"]
      output_artifacts = ["AppliedArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-complete-apply"
      }
    }]
  }
]
# codepipeline_tf_push_pipeline_status_email_id = "nestormojarrieta22@gmail.com"
# codepipeline_tf_push_notifications_event_type_ids = [
#   "codepipeline-pipeline-pipeline-execution-failed",
#   "codepipeline-pipeline-pipeline-execution-canceled",
#   "codepipeline-pipeline-pipeline-execution-succeeded",
#   "codepipeline-pipeline-pipeline-execution-started",
#   "codepipeline-pipeline-manual-approval-needed",
#   "codepipeline-pipeline-manual-approval-succeeded",
#   "codepipeline-pipeline-manual-approval-failed"
# ]
codepipeline_tf_push_trigger_git_conf_push_branches_includes           = ["main"]
codepipeline_tf_push_trigger_git_conf_push_branches_excludes           = null
codepipeline_tf_push_trigger_git_conf_push_file_paths_includes         = ["infra/infra_auto/environments/staging/*", "infra/infra_auto/environment_template/*", "infra/infra_auto/auxiliar_files/**/*", "backend/**/*"]
codepipeline_tf_push_trigger_git_conf_push_file_paths_excludes         = null
codepipeline_tf_push_trigger_git_conf_push_tags_includes               = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_push_trigger_git_conf_push_tags_excludes               = null
codepipeline_tf_push_trigger_git_conf_pull_request_events              = ["OPEN", "UPDATED", "CLOSED"]
codepipeline_tf_push_trigger_git_conf_pull_request_branches_includes   = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_push_trigger_git_conf_pull_request_branches_excludes   = null
codepipeline_tf_push_trigger_git_conf_pull_request_file_paths_includes = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_push_trigger_git_conf_pull_request_file_paths_excludes = null



################___   ___
################l__l  l__l
################l     l   l

codepipeline_tf_pr_enable_module            = true
codepipeline_tf_pr_name                     = "codepipeline-tf-pr-staging"
codepipeline_tf_pr_source_branch            = "main"
codepipeline_tf_pr_full_repository_id       = "alivi-group/Vision"
codepipeline_tf_pr_stages = [
  {
    name = "Validation"
    action = [{
      name             = "tf_validate"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceOutput"]
      output_artifacts = ["ValidateArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-validate"
      }
      } #,
      # {
      #   name             = "tf_checkov"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["CheckovArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-checkov"
      #   }
      # },
      # {
      #   name             = "tf_tfsec"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TfsecArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-tfsec"
      #   }
      # },
      # {
      #   name             = "tf_tflint"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TflintArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-tflint"
      #   }
      # },
      # {
      #   name             = "tf_terrascan"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TerrascanArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-terrascan"
      #   }
      # }
    ]
  },
  {
    name = "Plan"
    action = [{
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceOutput"]
      output_artifacts = ["BuildArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-plan"
      }
    }]
  }#,
  # {
  #   name = "Manual"
  #   action = [{
  #     name             = "Manual"
  #     category         = "Approval"
  #     owner            = "AWS"
  #     provider         = "Manual"
  #     version          = "1"
  #     input_artifacts  = []
  #     output_artifacts = []
  #     configuration = {}
  #     run_order        = 1
  #   }]
  # },  
  # {
  #   name = "Apply"
  #   action = [{
  #     name             = "tf_apply"
  #     category         = "Build"
  #     owner            = "AWS"
  #     provider         = "CodeBuild"
  #     input_artifacts  = ["BuildArtifact"]
  #     output_artifacts = ["AppliedArtifact"]
  #     version          = "1"
  #     run_order        = 1
  #     configuration = {
  #       ProjectName = "codebuild-tf-apply"
  #     }
  #   }]
  # },
  # {
  #   name = "Apply"
  #   action = [{
  #     name             = "tf_complete_apply"
  #     category         = "Build"
  #     owner            = "AWS"
  #     provider         = "CodeBuild"
  #     input_artifacts  = ["SourceOutput"]
  #     output_artifacts = ["AppliedArtifact"]
  #     version          = "1"
  #     run_order        = 1
  #     configuration = {
  #       ProjectName = "codebuild-tf-complete_apply"
  #     }
  #   }]
  # }
]
codepipeline_tf_pr_trigger_git_conf_push_branches_includes           = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_pr_trigger_git_conf_push_branches_excludes           = null
codepipeline_tf_pr_trigger_git_conf_push_file_paths_includes         = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_pr_trigger_git_conf_push_file_paths_excludes         = null
codepipeline_tf_pr_trigger_git_conf_push_tags_includes               = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_pr_trigger_git_conf_push_tags_excludes               = null
codepipeline_tf_pr_trigger_git_conf_pull_request_events              = ["OPEN", "UPDATED"]
codepipeline_tf_pr_trigger_git_conf_pull_request_branches_includes   = ["main"]
codepipeline_tf_pr_trigger_git_conf_pull_request_branches_excludes   = null
codepipeline_tf_pr_trigger_git_conf_pull_request_file_paths_includes = ["infra/infra_auto/environments/staging/*", "infra/infra_auto/environment_template/*", "infra/infra_auto/auxiliar_files/**/*", "backend/**/*"]
codepipeline_tf_pr_trigger_git_conf_pull_request_file_paths_excludes = null


################_____       __
################  l   __   l__
################  l  l__l_ l__l

codepipeline_tf_tag_enable_module            = true
codepipeline_tf_tag_name                     = "codepipeline-tf-tag-staging"
codepipeline_tf_tag_source_branch            = "main"
codepipeline_tf_tag_full_repository_id       = "alivi-group/Vision"
codepipeline_tf_tag_stages = [
  {
    name = "Validation"
    action = [{
      name             = "tf_validate"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceOutput"]
      output_artifacts = ["ValidateArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-validate"
      }
      } #,
      # {
      #   name             = "tf_checkov"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["CheckovArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-checkov"
      #   }
      # },
      # {
      #   name             = "tf_tfsec"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TfsecArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-tfsec"
      #   }
      # },
      # {
      #   name             = "tf_tflint"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TflintArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-tflint"
      #   }
      # },
      # {
      #   name             = "tf_terrascan"
      #   category         = "Build"
      #   owner            = "AWS"
      #   provider         = "CodeBuild"
      #   input_artifacts  = ["SourceOutput"]
      #   output_artifacts = ["TerrascanArtifact"]
      #   version          = "1"
      #   run_order        = 1
      #   configuration = {
      #     ProjectName = "codebuild-tf-terrascan"
      #   }
      # }
    ]
  },
  {
    name = "Plan"
    action = [{
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceOutput"]
      output_artifacts = ["BuildArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-plan"
      }
    }]
  },
  {
    name = "Manual"
    action = [{
      name             = "Manual"
      category         = "Approval"
      owner            = "AWS"
      provider         = "Manual"
      version          = "1"
      input_artifacts  = []
      output_artifacts = []
      configuration = {}
      run_order        = 1
    }]
  },  
  {
    name = "Apply"
    action = [{
      name             = "tf_apply"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["BuildArtifact"]
      output_artifacts = ["AppliedArtifact"]
      version          = "1"
      run_order        = 1
      configuration = {
        ProjectName = "codebuild-tf-apply"
      }
    }]
  }#,
  # {
  #   name = "Apply"
  #   action = [{
  #     name             = "tf_complete_apply"
  #     category         = "Build"
  #     owner            = "AWS"
  #     provider         = "CodeBuild"
  #     input_artifacts  = ["SourceOutput"]
  #     output_artifacts = ["AppliedArtifact"]
  #     version          = "1"
  #     run_order        = 1
  #     configuration = {
  #       ProjectName = "codebuild-tf-complete_apply"
  #     }
  #   }]
  # }
]
codepipeline_tf_tag_trigger_git_conf_push_branches_includes           = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_tag_trigger_git_conf_push_branches_excludes           = null
codepipeline_tf_tag_trigger_git_conf_push_file_paths_includes         = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_tag_trigger_git_conf_push_file_paths_excludes         = null
codepipeline_tf_tag_trigger_git_conf_push_tags_includes               = ["staging*"]
codepipeline_tf_tag_trigger_git_conf_push_tags_excludes               = null
codepipeline_tf_tag_trigger_git_conf_pull_request_events              = ["OPEN", "UPDATED"]
codepipeline_tf_tag_trigger_git_conf_pull_request_branches_includes   = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_tag_trigger_git_conf_pull_request_branches_excludes   = null
codepipeline_tf_tag_trigger_git_conf_pull_request_file_paths_includes = ["XXXXXXXXXXXXXXX"]
codepipeline_tf_tag_trigger_git_conf_pull_request_file_paths_excludes = null