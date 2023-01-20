terraform {
  required_providers {
    juju = {
      source  = "juju/juju"
      version = "0.4.3"
    }
  }
}

resource "juju_application" "indico" {
  name  = "indico"
  model = "indico-test"

  charm {
    name = "indico"
  }

  config = {
    site_url = "test-site"
  }
}
