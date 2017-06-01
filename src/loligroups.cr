require "kemal"

require "./loligroups/*"

module Loligroups
  get "/" do
    "Hello LoliGroups"
  end
end

Kemal.run
