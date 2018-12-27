# Example of Rails and Sidekiq metrics exported to Datadog

This example illustrates how to use [yabeda] gem suite with [Rails] application to collect custom metrics and send them to [Datadog] via containerized [agent].

## Prerequisites

- Datadog account
- Recent versions of Docker and Docker Compose installed.

## Usage

1. Create datadog-agent.env based on datadog-agemt.env.example
1. Create rails.env based on rails.env.example
1. Execute `docker-compose up` to start.
1. Go to rails application at http://localhost:5000
1. Hit the button and refresh page few times
1. Go to your Datadog dashboard and create one
1. Add metrics to the dashboard
1. Look for graphs

## Acknowledgement

This example is based on [Yabeda Prometheus example](https://github.com/yabeda-rb/example-prometheus-sidekiq).

## License

This example is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[yabeda]: https://github.com/yabeda-rb/yabeda
[yabeda-rails]: https://github.com/yabeda/yabeda-rails
[yabeda-sidekiq]: https://github.com/yabeda/yabeda-sidekiq
[yabeda-datadog]: https://github.com/yabeda/yabeda-datadog
[Rails]: https://rubyonrails.org "Ruby on Rails MVC web-application framework optimized for programmer happiness"
[Sidekiq]: https://github.com/mperham/sidekiq/ "Simple, efficient background processing for Ruby"
[Datadog]: https://www.datadoghq.com/ "Open-source monitoring solution"
[agent]: https://github.com/DataDog/datadog-agent/tree/master/Dockerfiles/agent "Datadog Agent 6 docker image"
