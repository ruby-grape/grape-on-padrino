module Grape
  class Router
    class Route
      def name
        "API#{version}"
      end

      def request_methods
        Set.new [request_method]
      end

      def original_path
        path
      end

      def controller
        nil
      end
    end
  end
end
