# coding: utf-8
class Triangle
  def self.triangle_select(sides_str)
    sides_int = sides_str.map {|item| item.to_i}
    sides = sides_int.sort
    if sides.all? {|side| side > 0 } and sides[2] < sides[0] + sides[1] then
      if sides.uniq.count == 1 then
        return '正三角形ですね！'
      elsif sides.uniq.count == 2 then
        return '二等辺三角形ですね！'
      else
        return '不等辺三角形ですね！'
      end
    else
      return '三角形じゃないです＞＜'  
    end
  end
end

if __FILE__ == $0
  puts Triangle.triangle_select(ARGV)
end
