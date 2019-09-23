###############################
# MAINLY TO ENCOURAGE WRITING
# UP SOME REASONING ABOUT
# THE PR, RATHER THAN
# JUST LEAVING A TITLE
###############################
if github.pr_body.length < 5 && git.lines_of_code > 10
    warn("Please provide a summary in the Pull Request description")
  end
  ###############################
  # FAIL IF YOU DON'T SET LABELS
  ###############################
  fail("Please add labels to the PR", sticky: true) if github.pr_labels.empty?
  ###################
  # CHANGLELOG CHECK
  ###################
  if !git.modified_files.include?("CHANGELOG.md")
    fail("CHANGELOG.md was not updated!", sticky: false)
    message("An example CHANGELOG can be found at https://github.com/Slack-IT/slack_core_biztech_example_repo/blob/master/CHANGELOG.md")
  end
  ################
  # PR SIZE ALERT
  ################
  message("") if git.lines_of_code > 500
  message("This PR is absolutely tiny, I just want you to know.") if git.lines_of_code < 50
