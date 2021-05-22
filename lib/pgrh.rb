# frozen_string_literal: true

require_relative 'pgrh/version'

require_relative 'pgrh/active_record'

module PGRH
  ActiveRecord::Base.send(:include, PGRH::ActiveRecordExtension)
end
