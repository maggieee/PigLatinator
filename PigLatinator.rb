class PigLatinateable

	def initialize
		puts 	"\n
				What is the phrase you\'re looking to PigLatinate?"
		@english_phrase = gets.chomp

		if @english_phrase == ''
			puts 'We can\'t really do much with an empty string!'
			exit
		end
	end

	def piglatinate
		pre_piglatinated_phrase = @english_phrase.to_s.split(" ")
		@piglatinated_array = []
		@piglatinated_phrase = ''

		pre_piglatinated_phrase.each do |x|
			x = x + x[0] + 'ay'
			x[0] = ''
			@piglatinated_array << x 
		end

		@piglatinated_array.each do |s|
			@piglatinated_phrase = @piglatinated_phrase + "#{s.to_s} "
		end

		@piglatinated_phrase = @piglatinated_phrase[0..-2]

		3.times do 
			puts 	"\n
					*********************\n" 
		end

		puts 	"\n
				Eatnay!\n 
				\'#{@piglatinated_phrase.upcase}\'\n
				is the PigLatinated version of
				\'#{@english_phrase}\'\n
				...oolcay, ightray?"

	end

	def take_it_back_to_english
		pre_re_englished_phrase = @piglatinated_phrase.split(" ")
		@re_englished_phrase = ''

		pre_re_englished_phrase.each do |x|
			x = x[-3] + x[0..-4]
			@re_englished_phrase = @re_englished_phrase + x + ' '
		end

		@re_englished_phrase = @re_englished_phrase[0..-2]

		3.times do 
			puts 	"\n
					*********************\n" 
		end
		puts 	"\n
				\'#{@re_englished_phrase.upcase}\'\n
				is the re-Englished version of\n
				\'#{@piglatinated_phrase}\'\n
				...which is the PigLatinated version of\n
				\'#{@english_phrase}\'\n
				...got it?"

	end

end

phrase = PigLatinateable.new 
phrase.piglatinate
phrase.take_it_back_to_english



