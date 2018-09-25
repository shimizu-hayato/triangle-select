# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

ans = ['正三角形ですね！','二等辺三角形ですね！','不等辺三角形ですね！','三角形じゃないです＞＜']


# 同値分割するために以下の場合に分けて分割する 
# すべての辺の長さが等しい:"5, 5, 5"
# 2辺の長さが等しい: "5, 5, 3"
# 3辺の長さがすべて異なる:"3, 4, 5"
# 1辺の長さが他の2辺の長さよりも長い:"5, 2, 3"

# すべてが負の数字:"-5, -5, -5"
# 2辺が負の数字:"-5, -5, 3"
# 1辺が負の数字:"5, 5, -3"
# どれか一つが負の数字:"-3, 4, 5"

# 境界値として0を指定し上記の例の負の値を0に置き換えてテストを行う
# テストケースをtest_caseの配列で示す

test_case = [['5,','5,','5'],['5,','5,','3'],['3,','4,','5'],['5,','2,','3'],
             ['-5,','-5,','-5'],['-5,','-5,','3'],['5,','5,','-3'],['-3,','4,','5'],
             ['0,','0,','0'],['0,','0,','3'],['5,','5,','0'],['0,','4,','5']] 

describe Triangle do
  context 'Equilateral triangle test' do
    specify { expect(Triangle.triangle_select(test_case[0])).to eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[1])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[2])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[3])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[4])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[5])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[6])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[7])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[8])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[9])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[10])).to_not eq ans[0] }
    specify { expect(Triangle.triangle_select(test_case[11])).to_not eq ans[0] }
  end

  context 'Isosceles triangle test' do
    specify { expect(Triangle.triangle_select(test_case[0])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[1])).to eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[2])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[3])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[4])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[5])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[6])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[7])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[8])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[9])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[10])).to_not eq ans[1] }
    specify { expect(Triangle.triangle_select(test_case[11])).to_not eq ans[1] }
  end

  context 'Equilateral triangle test' do
    specify { expect(Triangle.triangle_select(test_case[0])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[1])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[2])).to eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[3])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[4])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[5])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[6])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[7])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[8])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[9])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[10])).to_not eq ans[2] }
    specify { expect(Triangle.triangle_select(test_case[11])).to_not eq ans[2] }
  end

  context 'Equilateral triangle test' do
    specify { expect(Triangle.triangle_select(test_case[0])).to_not eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[1])).to_not eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[2])).to_not eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[3])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[4])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[5])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[6])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[7])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[8])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[9])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[10])).to eq ans[3] }
    specify { expect(Triangle.triangle_select(test_case[11])).to eq ans[3] }
  end
end
