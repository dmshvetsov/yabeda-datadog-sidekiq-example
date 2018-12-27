Sidekiq.configure_server do |_config|
  Yabeda::Datadog.start_exporter
end
