atom_feed do |feed|
	feed.title("MB's World")
	feed.updated(@posts.first.created_at)

@posts.each do |post|
	feed.entry(post) do |entry|
		entry.title(post.title)
		entry.counter(post.body, :type => 'html')
		entry.author { |author| author.name("MB")}
		end
	end
end