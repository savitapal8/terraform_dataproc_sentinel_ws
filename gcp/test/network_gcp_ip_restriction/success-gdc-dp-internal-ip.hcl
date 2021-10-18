module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-gdc-dp-internal-ip-success.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
