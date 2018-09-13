# 4.4.3 ex2, ex3 -----------------------------------------
# class String
# 	def shuffle(immutable = true)
# 		before = self
# 		loop do
# 			after = split('').shuffle.join
# 			if (before != after or immutable == true)
# 				return after
# 				break
# 			end
# 		end
# 	end
# end


# 4.4.5 ----------------------------------------
# class User
# 	# C#のプロパティみたいなもの 
# 	# :~ の :以降と同名のインスタンス変数 @~ と紐づけされる
# 	attr_accessor :name, :email

# 	# コンストラクタみたいなもの
# 	def initialize(attributes = {})
# 		@name = attributes[:name]
# 		@email = attributes[:email]
# 	end

# 	def formatted_email
# 		"#{@name} <#{@email}>"
# 	end
# end

# ローカル変数 「~」
# 	スコープ内でのみ生きられる変数
# インスタンス変数 「@~」
# 	C#のメンバー変数みたいなもの
# 	クラス外でも定義、呼び出し可能
# クラス変数 「@@~」
# 	C#の静的変数 「static object ~」 みたいなもの
# シンボル 「:~」
# 	値をもたないオブジェクト
# 	ハッシュのキーなどに用いられる
# 	「~:」 は 「:~ =>」 と 同義

# ex ------------------------
class User
	attr_accessor :first_name, :last_name, :email

	def initialize(attributes = {})
		@first_name = attributes[:first_name]
		@last_name = attributes[:last_name]
		@email = attributes[:email]
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def alphabetical_name
		"#{@last_name}, #{first_name}"
	end

	def formatted_email
		"#{full_name} <#{@email}>"
	end
end

user = User.new(first_name:"Michael", last_name:"Hartl", email:"user@example.com")
p user.full_name
# => "Michael Hartl"
p user.alphabetical_name
# => "Hartl. Michael"
a = user.full_name.split
p a
# => ["Michael", "Hartl"]
b = user.alphabetical_name.split(', ').reverse
p b
# => ["Michael", "Hartl"]
p a == b
# => true
