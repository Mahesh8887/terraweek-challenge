variable region {
    default = "ap-southeast-1"
}
variable instance_type {
    default = "t2.micro"
} 
variable ami {
    type = map
    default = {
        "ProjectA" = "ami-002843b0a9e09324a"
        "ProjectB" = "ami-0df7a207adb9748c7"
    }
}

