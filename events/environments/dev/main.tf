terraform {
  required_providers {
    juju = {
      source  = "juju/juju"
      version = "0.4.3"
    }
  }
}

provider "juju" {}

resource "juju_model" "indico_test" {
  name = "indico-test"
}


resource "juju_application" "indico" {
  name  = "indico"
  model = juju_model.indico_test.name

  charm {
    name = "indico"
  }

  config = {
    site_url = "indico-test.internal"
  }
}
