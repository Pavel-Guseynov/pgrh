# frozen_string_literal: true

class ActiveRecord < ActiveRecord::Base
  def self.find_or_create_with_params(attributes, params, &block)
    find_or_create_by(attributes) do |record|
      params.each do |param, value|
        record.send "=#{param}", value
      end

      record.instance_eval(&block)
    end
  end

  def self.find_or_create_with_params!(attributes, params, &block)
    find_or_create_by!(attributes) do |record|
      params.each do |param, value|
        record.send "=#{param}", value
      end

      record.instance_eval(&block)
    end
  end
end
