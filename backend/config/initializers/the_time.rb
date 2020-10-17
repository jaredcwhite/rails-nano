require "shared/example"

Shared::Example.boot_time((Random.rand * 10000).to_i)
