@n = 4
# 鬼を含んだ配列。
@all = (0..@n).to_a

#開始時の位置は1を固定した1通り。終了は1を順にずらしたモノ全て。

# 開始時の配置
start = {}
start[(1..@n).to_a] = []

# 終了時の配置
goal = {}
@n.times{|i|
  goal[(1..@n).to_a.reverse.rotate(i)] = []
}

# 移動距離を求める
def dist(log) #log:ハンカチを落とした位置の記録
  return 0 if log.size == 0
  check = log.clone
  pre = check.shift
  sum = @n + pre
  check.each{|c|
    # %@n することにより0をまたぐ場合とそうでない場合をまとめて書ける
    sum += @n + (c + @n - pre) % @n 
    pre = c
  }
  sum
end

# 探索（directionがtrueのとき順方向、falseのとき逆方向）
def search(child, direction)
  child.clone.each{|key, value|
    oni = (@all - key)[0] # 使われていないのが鬼
    @n.times{|i|  #全ての位置に鬼を座らせる
      k = key.clone
      k[i] = oni  #新たに鬼が座った配置
      v = value + [i]  #ハンカチを落とした位置のログ
      if child.has_key?(k) then
        if direction then # 順方向
          child[k] = v if dist(v) < dist(child[k])
        else              # 逆方向
          child[k] = v if dist(v.reverse) < dist(child[k].reverse)
        end
      else
        child[k] = v
      end
    }
  }
end


# puts start
# puts goal
# puts (start.keys & goal.keys)
# puts (start.keys & goal.keys).size

# p "-----------------------------"
# search(start, cnt % 2 == 0)
# puts start
# puts goal
# puts (start.keys & goal.keys)
# puts (start.keys & goal.keys).size

# p "-----------------------------"
# search(goal, cnt % 2 == 0)
# puts start
# puts goal
# puts (start.keys & goal.keys)
# puts (start.keys & goal.keys).size



# p "-----------------------------"
# search(start, cnt % 2 == 0)
# puts start
# puts goal

cnt = 0
while (start.keys & goal.keys).size == 0 do
  if cnt % 2 == 0 then # 偶数のときは順方向に探索
    search(start, cnt % 2 == 0)
  else                 # 奇数のときは逆方向に探索
    search(goal, cnt % 2 == 0)
  end
  cnt += 1
end

puts start
puts goal
puts (start.keys & goal.keys)
(start.keys & goal.keys).each{|c|
  p c
  d = dist(start[c] + goal[c].reverse)
  p d
}



# # 両方向からの探索結果が合流した場合、最短の移動距離を算出
# min = 98
# (start.keys & goal.keys).each{|c|
#   d = dist(start[c] + goal[c].reverse)
#   min = [min, d].min
# }

# puts min
# puts start
# puts goal