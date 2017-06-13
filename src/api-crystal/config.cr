require "yaml"

module Api::Crystal::Config
  def self.load(filename : String)
    YAML.parse(File.open(filename))
  end
end
