
output "kibana" {
  value = module.kibana.OUTPUT_IP
}

output "es_master" {
  value = module.es_master.OUTPUT_IP
}

output "es_hot_01_ip" {
  value = module.es_hot_01.OUTPUT_IP
}

output "es_hot_02_ip" {
  value = module.es_hot_02.OUTPUT_IP
}

output "es_warm_01_ip" {
  value = module.es_warm_01.OUTPUT_IP
}

output "es_warm_02_ip" {
  value = module.es_warm_02.OUTPUT_IP
}

output "es_cold_01_ip" {
  value = module.es_cold_01.OUTPUT_IP
}

output "logstash_01_ip" {
  value = module.logstash_01.OUTPUT_IP
}

output "logstash_02_ip" {
  value = module.logstash_02.OUTPUT_IP
}

