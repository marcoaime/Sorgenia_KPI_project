# Set options
data_folder_path = "./data/"


read_file = function(file_name, sep=",") {
  file_path = paste(data_folder_path, file_name, sep="")
  read.csv(file_path, header = TRUE, sep=sep)
}