require "./api-crystal/*"

module Api::Crystal
  begin
    Api::Crystal::Config.load("config.yaml")
  rescue ex
    puts ex
  end
end
