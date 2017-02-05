require 'json'

# Simple Parser for Credential File, normally ~/.rubrik/creds.json
# Format of creds.json :
# {
#        "server": "[cluster_address]",
#        "username": "[username]",
#        "password": "[password]"
#}

def getCreds
	File.expand_path('~')
	return JSON.parse(File.read(File.expand_path('~') + '/.rubrik/creds.json'))
end
