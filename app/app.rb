# frozen_string_literal: true

module Acme
  class App < Grape::API
    class << self
      def cascade
        []
      end

      def root
        @root ||= File.expand_path(__dir__)
      end

      def dependencies
        @dependencies ||= Dir[File.expand_path('../api/*.rb', __dir__)]
      end

      def load_paths
        @load_paths ||= [File.expand_path('../api', __dir__)]
      end

      ## NOTE: Taken from Padrino. Deprecated in master (0.13.0.rc1).
      ## Padrino apps must now modify $LOAD_PATH for themselves.
      ## See: https://github.com/padrino/padrino-framework/pull/1693
      ##
      # Concat to +$LOAD_PATH+ the given paths.
      #
      # @param [Array<String>] paths
      #   The paths to concat.
      #
      def set_load_paths(*paths)
        $LOAD_PATH.concat(paths).uniq!
      end

      def setup_application!
        @setup_application ||= begin
          set_load_paths(*load_paths)
          Padrino.require_dependencies(dependencies, force: true)
          # Padrino's Kernel#logger shadows Grape's logger DSL.
          global_setting :logger, Padrino.logger
          true
        end
      end

      def app_file
        ''
      end

      def public_folder
        ''
      end
    end

    setup_application!

    mount Acme::Api::Ping
  end
end
