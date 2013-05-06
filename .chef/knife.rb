current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vagabond"
client_key               File.join(current_dir, 'vagabond.pem')
validation_client_name   "vagabond-validator"
validation_key           File.join(current_dir, 'vagabond-validator.pem')

cookbook_path [
  File.join(File.dirname(current_dir), 'cookbooks'),
  File.join(File.dirname(current_dir), 'site-cookbooks')
]
