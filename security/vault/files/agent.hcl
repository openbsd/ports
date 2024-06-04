vault {
  address = "http://127.0.0.1:8200"
  ca_cert = "/etc/ssl/cert.pem"
}

auto_auth {
  method {
    type = "token_file"
    config {
      token_file_path = "/etc/vault/token"
    }
  }
}

log_level            = "info"

pid_file = "/var/vault/agent.pid"

template_config {
  static_secret_render_interval = "5m"
  exit_on_retry_failure         = true
  max_connections_per_host      = 10
}

exec {
  command                   = ["env"]
  restart_on_secret_changes = "always"
  restart_stop_signal       = "SIGTERM"
}
