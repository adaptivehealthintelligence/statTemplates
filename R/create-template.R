


#' Create minute template
#'
#' `create_minutes` creates a minute template for you to fill in
#'
#' This is a helper function to create minutes in a consistent way (but it won't
#' get you any additional hours in the day).
#' You can use it at any meeting to record the agenda, attendees etc.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
create_minutes <- function(
    file_name = NULL,
    ext_name = "minutes") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("minutes"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "statTemplates"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/minutes/minutes-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}





#' Create review request outline document
#'
#' `review_request_notif` creates a review request template for you to fill in
#'
#' This is a helper function to create a review request template.
#' When developing your sap, code, trial report etc, you can use this to produce
#' a nicely formatted document that captures all the relevant information to
#' undertake a review. You can keep this review request as part of your project
#' files and, if necessary, also transfer a copy to the TMF.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
review_request_notif <- function(
    file_name = NULL,
    ext_name = "review-request-notif") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("review-request-notif"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "statTemplates"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/review-request-notif/review-request-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}






#' Create review update outline document
#'
#' `review_update_notif` creates a review update template for you to fill in
#'
#' This is a helper function to create a review update template.
#' When developing your sap, code, trial report etc, you can use this to produce
#' a nicely formatted document that captures all the relevant information relevant
#' to the updates you committed to making as an outcome of the review. You can
#' keep this review request as part of your project files and, if necessary,
#' also transfer a copy to the TMF.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
review_update_notif <- function(
    file_name = NULL,
    ext_name = "review-update-notif") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("review-update-notif"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "statTemplates"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/review-update-notif/review-update-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}

#' Create review release outline document
#'
#' `review_release_notif` creates a review release template for you to fill in
#'
#' This is a helper function to create a review release template.
#' When developing your sap, code, trial report etc, you can use this to produce
#' a nicely formatted document that captures all the relevant information relevant
#' to the release notification which signifies a milestone in the products dev.
#' You can keep this review request as part of your project files and, if
#' necessary, also transfer a copy to the TMF.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
review_release_notif <- function(
    file_name = NULL,
    ext_name = "review-release-notif") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("review-release-notif"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "statTemplates"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/review-release-notif/review-release-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}




