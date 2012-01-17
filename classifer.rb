#!/usr/bin/ruby
require 'yaml'

fqdn = ARGV[0]
config = {'classes' => {'common' => nil}}
config['parameters'] = {}
config['parameters']['rails_env'] = 'production' 
config['parameters']['ruby_version'] = 'ree-1.8.7-2011.12' 
config['parameters']['unicorn_workers'] = '3' 
config['parameters']['db_pass'] = 'spree123' 

  config['classes']['appserver'] = nil
  config['classes']['dbserver'] = nil
  config['parameters']['app_name'] = 'spree'
  config['parameters']['db_server'] = '127.0.0.1'

puts YAML.dump(config)
