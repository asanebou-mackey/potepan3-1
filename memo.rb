require "csv"
puts "1→新規でメモを作成する/ 2→既存のメモを編集する"
memo_type = gets.chomp.to_i

if memo_type == 1
    #新規でメモの場合
    puts "拡張子を除いたファイル名を記入してください"
    file_name = gets.chomp
    puts "メモしたい内容を入力してください"
    puts "完了したらCtrl + Dを押します"
    memo = STDIN.read
    CSV.open("#{file_name}.csv", "w") do |csv|
        csv << [memo]
    end
elsif memo_type == 2
    #既存メモの場合
    puts "拡張子を除いたファイル名を記入してください"
    file_name = gets.chomp
    puts "メモしたい内容を入力してください"
    puts "完了したらCtrl + Dを押します"
    memo = STDIN.read
    CSV.open("#{file_name}.csv", "a") do |csv|
        csv << [memo]
    end
end