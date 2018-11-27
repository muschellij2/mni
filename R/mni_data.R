#' MNI Datasets
#'
#' @param type Type of imaging, either MINC or NIfTI types
#'
#' @return A \code{data.frame} with names and groups
#' @export
#'
#' @examples
#' mni_datasets()
mni_datasets = function(type = c("nifti", "minc1", "minc2")) {
  type = match.arg(type)

  L = list(
    icbm152 = c(
      "ICBM152 linear" = "mni_icbm152_lin",
      "ICBM152 nonlinear 6th generation" = "mni_icbm152_nl_VI",
      "ICBM152 2009a Nonlinear Asymmetric" = "mni_icbm152_nlin_asym_09a",
      "ICBM152 2009a Nonlinear Symmetric" = "mni_icbm152_nlin_sym_09a",
      "ICBM152 2009b Nonlinear Symmetric" = "mni_icbm152_nlin_sym_09b",
      "ICBM152 2009b Nonlinear Asymmetric" = "mni_icbm152_nlin_asym_09b",
      "ICBM152 2009c Nonlinear Symmetric" = "mni_icbm152_nlin_sym_09c",
      "ICBM152 2009c Nonlinear Asymmetric" = "mni_icbm152_nlin_asym_09c"
    ),
    PD25 = c(
      "Multi-contrast PD25 atlas 20160706" = "mni_PD25_20160706",
      "Multi-contrast PD25 atlas 20170213" = "mni_PD25_20170213",
      "Multi-contrast PD25 atlas Big brain" = "mni_PD25_Bigbrain"),
    colin27 = c(
      "Colin 27 Average Brain 1998" = "mni_colin27_1998",
      "Colin 27 Average Brain 2008" = "mni_colin27_2008",
      "Colin 27 Average Brain 2008 Fuzzy Segmentation " = "mni_colin27_2008_fuzzy"
    ),
    mni305 = c(
      "MNI Average Brain (305 MRI)" = "mni305_lin"
    ),
    pediatric = c(
      "All Pediatric Left-Right Symmetric templates" = "nihpd_asym_all",

      "4.5-18.5 y.o Left-Right Symmetric templates" = "nihpd_sym_04.5-18.5",
      "4.5-8.5 y.o Left-Right Symmetric templates" = "nihpd_sym_04.5-08.5",
      "7-11 y.o Left-Right Symmetric templates" = "nihpd_sym_07.0-11.0",
      "7.5-13.5 y.o Left-Right Symmetric templates" = "nihpd_sym_07.5-13.5",
      "10-14 y.o Left-Right Symmetric templates" = "nihpd_sym_10.0-14.0",
      "13-18.5 y.o Left-Right Symmetric templates" = "nihpd_sym_13.0-18.5",
      "All Pediatric Asymmetric (natural) templates" = "nihpd_sym_all",
      "4.5-18.5 y.o Asymmetric (natural) templates" = "nihpd_asym_04.5-18.5",
      "4.5-8.5 y.o Asymmetric (natural) templates" = "nihpd_asym_04.5-08.5",
      "7-11 y.o Asymmetric (natural) templates" = "nihpd_asym_07.0-11.0",
      "7.5-13.5 y.o Asymmetric (natural) templates" = "nihpd_asym_07.5-13.5",
      "10-14 y.o Asymmetric (natural) templates" = "nihpd_asym_10.0-14.0",
      "13-18.5 y.o Asymmetric (natural) templates" = "nihpd_asym_13.0-18.5"
    ),
    infant = c(
      "All Infant Atlases 0-4.5 years" = "nihpd_obj2_asym")
  )
  res = lapply(names(L), function(x) {
    y = L[[x]]
    y = trimws(y)
    names(y) = trimws(names(y))
    xurl = x
    xurl[xurl == "pediatric"] = "obj1"
    xurl[xurl == "infant"] = "obj2"

    df = data.frame(file = y, group_name = names(y), group = x,
                    path = file.path(xurl, y),
                    stringsAsFactors = FALSE)
    df$file = paste0(df$path, "_", type, ".zip")
    df
  })
  res = do.call(rbind, res)
  rownames(res) = NULL
  res$url = sapply(res$group, mni_url)
  res$url = file.path(res$url, res$file)
  return(res)
}
