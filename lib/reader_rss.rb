module ReaderRss

	module ActsAsReaderRss
    extend ActiveSupport::Concern
        require 'static_methods'
     
    included do
    end
     
    module ClassMethods
      def acts_as_reader_rss(options = {})
        @reader_rss_options = options
        extend StaticMethods
      end
    end

  end
end
ActiveRecord::Base.send :include, ReaderRss::ActsAsReaderRss