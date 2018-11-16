# Install required packages if missing
if (!require("pacman")) install.packages("pacman")
library(pacman)
p_load(RODBC)

# Import required packages
library(RODBC)

start_connection_SQL_SERVER = function(server, db, table) {
  dbconnection <- odbcDriverConnect(paste("Driver={SQL Server};Server=",server,"; Database=",db,";Uid=; Pwd=; trusted_connection=yes", sep = ""))
  # initdata <- sqlQuery(dbconnection,paste("select * from ",table,";", sep = ""))
  # odbcClose(dbconnection)
}

select_query_SQL_SERVER = function(dbconnection, table) {
  initdata <- sqlQuery(dbconnection,paste("select * from ",table,";", sep = ""))
}

end_connection_SQL_SERVER = function(dbconnection) {
  odbcClose(dbconnection)
}