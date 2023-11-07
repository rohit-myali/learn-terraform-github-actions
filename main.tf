terraform {
  required_providers {
    citrixadc = {
      source = "citrix/citrixadc"
    }
  }
}

provider "citrixadc" {
  # endpoint = "http://74.249.243.129"
  # username = "nsroot"
  password = var.NS_PASSWORD
  # insecure_skip_verify = true
}

variable "NS_PASSWORD" {
  
}

resource "citrixadc_lbvserver" "new_tf_lbvserver" {
  ipv46       = "10.10.10.33"
  name        = "new_tf_lbvserver"
  port        = 80
  servicetype = "HTTP"
}
