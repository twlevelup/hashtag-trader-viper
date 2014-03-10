require 'minitest/spec'
require 'minitest/autorun'

require_relative '../lib/configuration'
require_relative 'minitest_helper'

describe Configuration do
  describe "in production" do
    let(:key) { 'key' }
    let(:secret) { 'secret' }
    before do
      ENV['GITHUB_API_KEY'] = key
      ENV['GITHUB_SECRET_KEY'] = secret
      ENV['RACK_ENV'] = 'production'
    end

    it "should not include the developer provider" do
      Configuration.new.omniauth_providers.any? { |provider| provider.keys.include? :developer  }.must_equal false
    end

    describe "github provider" do
      it "should be included" do
        Configuration.new.omniauth_providers.must_include :github => [key, secret]
      end

      it "should raise an error if api key is not provided" do
        ENV['GITHUB_API_KEY'] = nil
        proc { Configuration.new }.must_raise ArgumentError, "Must provide Github API key as GITHUB_API_KEY environment variable"
      end
      
      it "should raise an error if api secret is not provided" do
        ENV['GITHUB_SECRET_KEY'] = nil
        proc { Configuration.new }.must_raise ArgumentError, "Must provide Github API secret as GITHUB_SECRET_KEY environment variable"
      end
    end
  end

  describe "not in production" do
    before do
      ENV['RACK_ENV'] = 'development'
    end
    it "should include the developer provider" do
      Configuration.new.omniauth_providers.any? { |provider| provider.keys.include? :developer }.must_equal true
    end

    it "should not include the github provider" do
      Configuration.new.omniauth_providers.any? { |provider| provider.keys.include? :github }.must_equal false
    end
  end
end