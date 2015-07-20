class PigLatinizeable

	def initialize
		puts 	"What is the phrase you\'re looking to piglatinize?".center(70)
		@english_phrase = gets.chomp

		if @english_phrase == ''
			puts "We can\'t really do much with an empty string!".center(70)
			exit
		end
	end


	def piglatinize
		pre_piglatinized_phrase = @english_phrase.to_s.split(" ")
		@piglatinized_array = []
		@piglatinized_phrase = ''

		pre_piglatinized_phrase.each do |x|
			x = x + x[0] + 'ay'
			x[0] = ''
			@piglatinized_array << x 
		end

		@piglatinized_array.each do |s|
			@piglatinized_phrase = @piglatinized_phrase + "#{s.to_s} "
		end

		@piglatinized_phrase = @piglatinized_phrase[0..-2]

	end

	def re_englishize
		pre_re_englishized_phrase = @piglatinized_phrase.split(" ")
		@re_englishized_phrase = ''

		pre_re_englishized_phrase.each do |x|
			x = x[-3] + x[0..-4]
			@re_englishized_phrase = @re_englishized_phrase + x + ' '
		end

		@re_englishized_phrase = @re_englishized_phrase[0..-2]

	end


	def dramatically_announce_piglatinization

		3.times do 
			puts 	"***piglatinizing in progress***".center(70) 
			puts 	
		end

		puts 	" ----------------------------------------".center(70)
		puts
		puts
		puts
		puts	">>> \'#{@piglatinized_phrase.upcase}\' <<<".center(70)
		puts
		puts	"is the PigLatinized version of \'#{@english_phrase}\'".center(70)
		puts	"...oolcay, ightray?".center(70)
		puts
		puts
		puts
		puts 	" ----------------------------------------".center(70)
		puts

	end


	def dramatically_announce_re_englishization
		3.times do 
			puts 	"***re-englishizing in progress***".center(70)
			puts
		end

		puts 	" ----------------------------------------".center(70)
		puts
		puts 
		puts
		puts 	">>> \'#{@re_englishized_phrase.upcase}\' <<<".center(70)
		puts
		puts	"is the re-Englishized version of \'#{@piglatinized_phrase}\',".center(70)
		puts	"which is the PigLatinized version of \'#{@english_phrase}\'".center(70)
		puts 	"...got it?".center(70)
		puts
		puts
		puts
		puts 	" ----------------------------------------".center(70)
		puts

	end


	def test
		if @re_englishized_phrase.upcase == @english_phrase.upcase
			puts "Wooo! The phrase was piglatinized and Re-Englishized as expected!"
		else
			puts "Uh oh....something isn\'t right..."
		end
	end

end

phrase = PigLatinizeable.new 
phrase.piglatinize
phrase.re_englishize
# phrase.test
phrase.dramatically_announce_piglatinization
phrase.dramatically_announce_re_englishization


