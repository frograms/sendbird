module Sendbird
  class StatisticApi
    extend Client
    ENDPOINT = 'statistics'.freeze
    class << self
      def metric(params={})
        get(path: build_url('metric'), params: params)
      end
    end
  end
end
