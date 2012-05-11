require 'rss'
require 'sanitize'
module StaticMethods
	def rss(links)
		objects = []
		links.each do |link|
			rss = RSS::Parser.parse(open(link).read, false)
			blog = rss.channel.title
			blog_link = rss.channel.link
			link_rss = link
			rss.items.each do |item|
				object = self.new()
				description = item.description
				description = Sanitize.clean description
				link = item.link
				title = item.title
				date = item.date
				object.attributes = {@reader_rss_options[:description] => description} if (not @reader_rss_options[:description].nil?) and (not description.nil?)
				object.attributes = {@reader_rss_options[:title] => title} if (not @reader_rss_options[:title].nil?) and ( not title.nil?)
				object.attributes = {@reader_rss_options[:link] => link} if (not @reader_rss_options[:link].nil?) and ( not link.nil?)
				object.attributes = {@reader_rss_options[:date] => date} if (not @reader_rss_options[:date].nil?) and (not date.nil?)
				object.attributes = {@reader_rss_options[:blog_name] => blog} if (not @reader_rss_options[:blog_name].nil?) and (not blog.nil?)
				object.attributes = {@reader_rss_options[:blog_link] => blog_link} if (not @reader_rss_options[:blog_link].nil?) and (not blog_link.nil?)
				object.attributes = {@reader_rss_options[:link_rss] => link_rss} if (not @reader_rss_options[:link_rss].nil?) and (not link_rss.nil?)
				objects << object
			end
		end
		objects
	end
end
