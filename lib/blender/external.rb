module Blender
  class External
    def initialize(tenant)
      @tenant = tenant
    end

    def self.something(tenant)
      new(tenant).makame
    end

    def makame
      upcase
    end

    private

    def upcase
      @tenant.upcase
    end
  end
end