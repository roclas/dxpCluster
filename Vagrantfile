Vagrant.configure("2") do |config|
  config.vm.hostname = "docker-host"
  config.vm.provider "docker" do |d|
    d.build_dir = "."
    d.ports = [ "8080:8080", "1234:1234", "8000:8000" ]
  end
end
