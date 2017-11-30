require 'active_support'

require 'yaml'
require 'open-uri'

require 'blender/external'
require 'blender/mock'

module Blender
  attr_accessor :configuration

  class << self
    def logger
      @configuration = nil
    end
  end
end
