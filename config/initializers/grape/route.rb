module Grape
  class Route
    def name
      "API#{route_version}"
    end

    def request_methods
      Set.new [route_method]
    end

    def original_path
      route_path
    end
  end
end
