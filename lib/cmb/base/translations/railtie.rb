require 'rails'

module Cmb
  module Base
    module Translations
      class Railtie < ::Rails::Railtie #:nodoc:
        initializer 'cmb-base-translations' do |app|
          Cmb::Base::Translations::Railtie.instance_eval do
            add("rails/locale/en.yml")
            add("rails/locale/fr.yml")
          end
        end

        protected

        def self.add(pattern)
          I18n.load_path.concat(Dir[File.join(File.dirname(__FILE__), '../../../..', pattern)])
        end

      end
    end
  end
end
