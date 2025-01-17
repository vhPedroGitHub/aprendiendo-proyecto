module "environment_template" {
  source                                                                 = "../../environment_template"
  codestarconnections_name                                               = var.codestarconnections_name
  codepipeline_tf_push_enable_module                                     = var.codepipeline_tf_push_enable_module
  codepipeline_tf_push_name                                              = var.codepipeline_tf_push_name
  codepipeline_tf_push_full_repository_id                                = var.codepipeline_tf_push_full_repository_id
  codepipeline_tf_push_source_branch                                     = var.codepipeline_tf_push_source_branch
  codepipeline_tf_push_tags                                              = var.codepipeline_tf_push_tags
  codepipeline_tf_push_stages                                            = var.codepipeline_tf_push_stages
  codepipeline_tf_push_trigger_git_conf_push_branches_includes           = var.codepipeline_tf_push_trigger_git_conf_push_branches_includes
  codepipeline_tf_push_trigger_git_conf_push_branches_excludes           = var.codepipeline_tf_push_trigger_git_conf_push_branches_excludes
  codepipeline_tf_push_trigger_git_conf_push_file_paths_includes         = var.codepipeline_tf_push_trigger_git_conf_push_file_paths_includes
  codepipeline_tf_push_trigger_git_conf_push_file_paths_excludes         = var.codepipeline_tf_push_trigger_git_conf_push_file_paths_excludes
  codepipeline_tf_push_trigger_git_conf_push_tags_includes               = var.codepipeline_tf_push_trigger_git_conf_push_tags_includes
  codepipeline_tf_push_trigger_git_conf_push_tags_excludes               = var.codepipeline_tf_push_trigger_git_conf_push_tags_excludes
  codepipeline_tf_push_trigger_git_conf_pull_request_events              = var.codepipeline_tf_push_trigger_git_conf_pull_request_events
  codepipeline_tf_push_trigger_git_conf_pull_request_branches_includes   = var.codepipeline_tf_push_trigger_git_conf_pull_request_branches_includes
  codepipeline_tf_push_trigger_git_conf_pull_request_branches_excludes   = var.codepipeline_tf_push_trigger_git_conf_pull_request_branches_excludes
  codepipeline_tf_push_trigger_git_conf_pull_request_file_paths_includes = var.codepipeline_tf_push_trigger_git_conf_pull_request_file_paths_includes
  codepipeline_tf_push_trigger_git_conf_pull_request_file_paths_excludes = var.codepipeline_tf_push_trigger_git_conf_pull_request_file_paths_excludes
  codepipeline_tf_pr_enable_module                                       = var.codepipeline_tf_pr_enable_module
  codepipeline_tf_pr_name                                                = var.codepipeline_tf_pr_name
  codepipeline_tf_pr_full_repository_id                                  = var.codepipeline_tf_pr_full_repository_id
  codepipeline_tf_pr_source_branch                                       = var.codepipeline_tf_pr_source_branch
  codepipeline_tf_pr_tags                                                = var.codepipeline_tf_pr_tags
  codepipeline_tf_pr_stages                                              = var.codepipeline_tf_pr_stages
  codepipeline_tf_pr_trigger_git_conf_push_branches_includes             = var.codepipeline_tf_pr_trigger_git_conf_push_branches_includes
  codepipeline_tf_pr_trigger_git_conf_push_branches_excludes             = var.codepipeline_tf_pr_trigger_git_conf_push_branches_excludes
  codepipeline_tf_pr_trigger_git_conf_push_file_paths_includes           = var.codepipeline_tf_pr_trigger_git_conf_push_file_paths_includes
  codepipeline_tf_pr_trigger_git_conf_push_file_paths_excludes           = var.codepipeline_tf_pr_trigger_git_conf_push_file_paths_excludes
  codepipeline_tf_pr_trigger_git_conf_push_tags_includes                 = var.codepipeline_tf_pr_trigger_git_conf_push_tags_includes
  codepipeline_tf_pr_trigger_git_conf_push_tags_excludes                 = var.codepipeline_tf_pr_trigger_git_conf_push_tags_excludes
  codepipeline_tf_pr_trigger_git_conf_pull_request_events                = var.codepipeline_tf_pr_trigger_git_conf_pull_request_events
  codepipeline_tf_pr_trigger_git_conf_pull_request_branches_includes     = var.codepipeline_tf_pr_trigger_git_conf_pull_request_branches_includes
  codepipeline_tf_pr_trigger_git_conf_pull_request_branches_excludes     = var.codepipeline_tf_pr_trigger_git_conf_pull_request_branches_excludes
  codepipeline_tf_pr_trigger_git_conf_pull_request_file_paths_includes   = var.codepipeline_tf_pr_trigger_git_conf_pull_request_file_paths_includes
  codepipeline_tf_pr_trigger_git_conf_pull_request_file_paths_excludes   = var.codepipeline_tf_pr_trigger_git_conf_pull_request_file_paths_excludes
  codepipeline_tf_tag_enable_module                                      = var.codepipeline_tf_tag_enable_module
  codepipeline_tf_tag_name                                               = var.codepipeline_tf_tag_name
  codepipeline_tf_tag_full_repository_id                                 = var.codepipeline_tf_tag_full_repository_id
  codepipeline_tf_tag_source_branch                                      = var.codepipeline_tf_tag_source_branch
  codepipeline_tf_tag_tags                                               = var.codepipeline_tf_tag_tags
  codepipeline_tf_tag_stages                                             = var.codepipeline_tf_tag_stages
  codepipeline_tf_tag_trigger_git_conf_push_branches_includes            = var.codepipeline_tf_tag_trigger_git_conf_push_branches_includes
  codepipeline_tf_tag_trigger_git_conf_push_branches_excludes            = var.codepipeline_tf_tag_trigger_git_conf_push_branches_excludes
  codepipeline_tf_tag_trigger_git_conf_push_file_paths_includes          = var.codepipeline_tf_tag_trigger_git_conf_push_file_paths_includes
  codepipeline_tf_tag_trigger_git_conf_push_file_paths_excludes          = var.codepipeline_tf_tag_trigger_git_conf_push_file_paths_excludes
  codepipeline_tf_tag_trigger_git_conf_push_tags_includes                = var.codepipeline_tf_tag_trigger_git_conf_push_tags_includes
  codepipeline_tf_tag_trigger_git_conf_push_tags_excludes                = var.codepipeline_tf_tag_trigger_git_conf_push_tags_excludes
  codepipeline_tf_tag_trigger_git_conf_pull_request_events               = var.codepipeline_tf_tag_trigger_git_conf_pull_request_events
  codepipeline_tf_tag_trigger_git_conf_pull_request_branches_includes    = var.codepipeline_tf_tag_trigger_git_conf_pull_request_branches_includes
  codepipeline_tf_tag_trigger_git_conf_pull_request_branches_excludes    = var.codepipeline_tf_tag_trigger_git_conf_pull_request_branches_excludes
  codepipeline_tf_tag_trigger_git_conf_pull_request_file_paths_includes  = var.codepipeline_tf_tag_trigger_git_conf_pull_request_file_paths_includes
  codepipeline_tf_tag_trigger_git_conf_pull_request_file_paths_excludes  = var.codepipeline_tf_tag_trigger_git_conf_pull_request_file_paths_excludes
}