# from https://www.nomadproject.io/intro/getting-started/cluster.html

# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/nomad"

# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}

# Enable the client
#client {
#    enabled = true
#
#    # For demo assume we are talking to localhost. For production,
#    # this should be like "nomad.service.consul:4647" and a system
#    # like Consul used for service discovery.
#    servers = ["127.0.0.1:4647"]
#}

# Give the agent a unique name. Defaults to hostname
#name = "nomad"

# Modify our port to avoid collision
#ports {
#    http = 5656
#}
