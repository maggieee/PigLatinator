class PigLatinateable

	def initialize
		puts "What is the phrase you\'re looking to PigLatinate?"
		@english_phrase = gets.chomp

		if @english_phrase == ''
			puts 'We can\'t really do much with an empty string!'
			exit
		end
	end

	def piglatinate
		@english_phrase = @english_phrase.to_s.split(" ")
		@piglatinated_array = []
		@piglatinated_phrase = ''

		@english_phrase.each do |x|
			x = x + x[0] + 'ay'
			x[0] = ''
			@piglatinated_array << x 
		end

		@piglatinated_array.each do |s|
			@piglatinated_phrase = @piglatinated_phrase + "#{s.to_s} "
		end

		@piglatinated_phrase = @piglatinated_phrase[0..-1]

		puts "Eatnay! #{@piglatinated_phrase}...oolcay, ightray?"

	end

	def take_it_back_to_english
		@piglatinated_phrase = @piglatinated_phrase.split(" ")

		@piglatinated_phrase.each do |x|
			x = x[0..-3]
			puts x
		end

	end

end

phrase = PigLatinateable.new 
phrase.piglatinate
phrase.take_it_back_to_english


