require_relative './models'

module DotNet

  # Provides file and info generation capabilities for NuGet package references.
  class PackageRef
    include DotNet::ModelMixin

    def initialize(hash)
      @model = DotNet::Model.new hash
      if !@model.name raise 'Package references require a name.'
    end

    def name
      @model.name
    end

    def is_versioned?
      !@model.version.to_s.empty?
    end

    def version
      @model.version
    end

    private

    attr_accessor :model
end
