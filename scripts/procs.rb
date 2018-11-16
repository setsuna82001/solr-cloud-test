require 'rsolr'

url = 'http://localhost:8901/solr/test'
solr = RSolr.connect(url: url, read_timeout: 120, open_timeout: 120)

p solr.get 'select', params: {:q => '*:*'}

p solr.add id: 1
p solr.commit

p solr.get 'select', params: {:q => '*:*'}

#p solr.get 'select', params: {:q => '*:*', field: 'id'}
