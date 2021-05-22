# frozen_string_literal: true

module PGRH
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    class_methods do
      def find_or_create_with_params(attributes, params, &block)
        find_or_create_by(attributes) do |record|
          params.each do |param, value|
            record.send "#{param}=", value
          end

          record.instance_eval(&block)
        end
      end

      def find_or_create_with_params!(attributes, params, &block)
        find_or_create_by!(attributes) do |record|
          params.each do |param, value|
            record.send "#{param}=", value
          end

          record.instance_eval(&block)
        end
      end
    end
  end
end
