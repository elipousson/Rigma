#' Set or get a Figma personal access token (PAT) saved as an environment
#' variable
#'
#' @description
#' [set_figma_token()] can set personal access token (PAT) as a local
#' environment variable temporarily for the current session or save the token
#' for future sessions.
#'
#' [get_figma_token()] returns a saved Figma PAT or errors if the token is
#' missing or if the token does not match the expected pattern.
#'
#' @param token A Figma personal access token (PAT). Optional for
#'   [get_figma_token()].
#' @inheritParams settoken::set_r_environ_token
#' @returns A string with a Figma personal access token.
#' @rdname set_figma_token
#' @export
set_figma_token <- function(token,
                            install = FALSE,
                            overwrite = FALSE,
                            quiet = FALSE,
                            call = caller_env()) {
  set_r_environ_token(
    token = token,
    install = install,
    overwrite = overwrite,
    default = getOption("Rigma.figma_token", "FIGMA_ACCESS_TOKEN"),
    quiet = quiet,
    call = call
  )
}

#' @rdname set_figma_token
#' @name get_figma_token
#' @export
get_figma_token <- function(token = NULL,
                            call = caller_env()) {
  get_r_environ_token(
    token = token,
    default = getOption("Rigma.figma_token", "FIGMA_ACCESS_TOKEN"),
    pattern = "^fig"
  )
}
