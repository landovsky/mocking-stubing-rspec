require 'pry'

module Blender
  class Mock
    def initialize(tenant)
      @tenant = tenant
    end

    def self.mock(tenant)
      new(tenant).makame
    end

    def makame
      external
    end

    private

    def external
      Blender::External.something(@tenant)
    end
  end
end
