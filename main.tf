terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = "< 0.37.1"
    }
  }
}

provider "snowflake" {
  role  = "SYSADMIN"
}

resource "snowflake_database" "db" {
  name     = "BS_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "WH_BS_DEMO"
  warehouse_size = "X-Small"

  auto_suspend = 60
}