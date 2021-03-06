% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deleteArms.R
\name{deleteArms}
\alias{deleteArms}
\alias{deleteArms.redcapDbConnection}
\alias{deleteArms.redcapApiConnection}
\title{Delete Arms From a Project}
\usage{
deleteArms(rcon, arms, ...)

\method{deleteArms}{redcapDbConnection}(rcon, arms, ...)

\method{deleteArms}{redcapApiConnection}(rcon, arms, ...,
  error_handling = getOption("redcap_error_handling"))
}
\arguments{
\item{rcon}{A REDCap connection object as generated by 
\code{redcapConnection}.}

\item{arms}{\code{integerish}, a vector of arm numbers that will be 
deleted.}

\item{...}{Additional arguments to pass to other methods.}

\item{error_handling}{An option for how to handle errors returned by the API.
see \code{\link{redcap_error}}}
}
\value{
None.
}
\description{
Delete arms from a project.  This is a destructive action that
  will result in deletion of any events and data associated with the arm.
  Due to its destructive nature, it may only be performed on databases 
  in development status.  Data loss is non-reversible.
}
\section{REDCap API Documentation}{

This method allows you to delete Arms from a project. 
Notice: Because of this method's destructive nature, it is only 
available for use for projects in Development status. Additionally, 
please be aware that deleting an arm also automatically deletes all 
events that belong to that arm, and will also automatically delete 
any records/data that have been collected under that arm (this is 
non-reversible data loss).

NOTE: This only works for longitudinal projects.
}

\section{REDCap Version}{

At least 8.1.17+ (and likely some earlier versions)
}

\references{
Please refer to your institution's API documentation.
}
