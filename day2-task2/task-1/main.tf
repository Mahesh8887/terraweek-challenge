  resource "local_file" "demofile" {
    filename = var.file_name
    content = "Hey, this is MAHESH and I'm doing terraweek challenge"
  }
