class PigLatinateable

	def initialize
		puts 	"What is the phrase you\'re looking to PigLatinate?".center(70)
		@english_phrase = gets.chomp

		if @english_phrase == ''
			puts "We can\'t really do much with an empty string!".center(70)
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

	end

	def take_it_back_to_english
		pre_re_englished_phrase = @piglatinated_phrase.split(" ")
		@re_englished_phrase = ''

		pre_re_englished_phrase.each do |x|
			x = x[-3] + x[0..-4]
			@re_englished_phrase = @re_englished_phrase + x + ' '
		end

		@re_englished_phrase = @re_englished_phrase[0..-2]

	end


	def dramatically_announce_piglatinization

		3.times do 
			puts 	"***piglatinating in progress***".center(70) 
			puts 	
		end

		puts 	" ----------------------------------------".center(70)
		puts
		puts
		puts
		puts	">>> \'#{@piglatinated_phrase.upcase}\' <<<".center(70)
		puts
		puts	"is the PigLatinated version of \'#{@english_phrase}\'".center(70)
		puts	"...oolcay, ightray?".center(70)
		puts
		puts
		puts
		puts 	" ----------------------------------------".center(70)
		puts
		
	end


	def dramatically_announce_re_englishization
		3.times do 
			puts 	"***re-renglishinating in progress***".center(70)
			puts
		end

		puts 	" ----------------------------------------".center(70)
		puts
		puts 
		puts
		puts 	">>> \'#{@re_englished_phrase.upcase}\' <<<".center(70)
		puts
		puts	"is the re-Englished version of \'#{@piglatinated_phrase}\',".center(70)
		puts	"which is the PigLatinated version of \'#{@english_phrase}\'".center(70)
		puts 	"...got it?".center(70)
		puts
		puts
		puts
		puts 	" ----------------------------------------".center(70)
		puts

	end


	def test
		if @re_englished_phrase.upcase == @english_phrase.upcase
			puts "Wooo! The phrase was PigLatinated and Re-Englishinated as expected!"
		else
			puts "Uh oh....something isn\'t right..."
		end
	end

end

phrase = PigLatinateable.new 
phrase.piglatinate
phrase.dramatically_announce_piglatinization
phrase.take_it_back_to_english
phrase.dramatically_announce_re_englishization
phrase.test



