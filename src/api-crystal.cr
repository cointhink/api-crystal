require "./api-crystal/*"

module Api::Crystal
  @@Config : YAML::Any = YAML.parse("")
  begin
    @@Config = Api::Crystal::Config.load("config.yaml")
    Api::Crystal::Net.listen
  rescue ex
    puts ex
  end
end
