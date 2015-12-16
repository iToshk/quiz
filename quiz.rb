
NUMBER_OF_QUESTIONS = 3
@correct_answer = 0

def answer_for_a_question
  which_question = rand(NUMBER_OF_QUESTIONS - 1) + 1

  case which_question
  when 1
    question1
  when 2
    question2
  when 3
    question3
  end

  answer = gets.to_i
  check_if_the_answer_is_correct(answer)
end

def question1
  puts 'Q1. フランスから伝わった料理で「カリカリした」という意味があるのは？'
  puts '作成者: Iwasaki'
  puts '3択です。1,2,3のどれかを入力してEnterを押してください。'
  puts '[1] カツレツ'
  puts '[2] コロッケ'
  puts '[3] エビフライ'
  @right_answer = 2
end

def question2
  puts 'Q2. 「ジャックと豆の木」でジャックが退治したのは？'
  puts '作成者: Iwasaki'
  puts '3択です。1,2,3のどれかを入力してEnterを押してください。'
  puts '[1] きょじん'
  puts '[2] おおかみ'
  puts '[3] だいじゃ'
  @right_answer = 1
end

# Note: この場所をquestion1のように変更してクイズを増やそう！
#
def question3
  question1
end

def check_if_the_answer_is_correct(answer)
  if answer == @correct_answer
    puts 'おめでとうございます！正解です！!'
  else
    puts "残念！正解は#{@right_answer}です！"
  end
end

num = 0

while num == 0
  puts 'クイズを行いますか？（クイズはランダムで一問出現します。）:[0]yes [1]no'
  puts '0か1を入力して、Enterを押してください。'

  answer = gets.chop

  if answer == '0'
    answer_for_a_question
  elsif answer == '1'
    num = 1
  else
    puts '0か1を入力してください'
  end
end

puts 'Thank you for playing!!'

