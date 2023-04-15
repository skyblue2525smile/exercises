class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Truck < Car
 def run(distance)
   super
   puts "大きな荷物を乗せて走ります。"
 end
end

truck = Truck.new
truck.run(5)

# Carクラス(親クラス)を継承しているのが
# Truckクラス(子クラス)です。
# オーバーライドは、親クラスで定義されたメソッドを、
# 子クラスでも同じ名前で定義して呼び出す
# そして、superを使ってCarクラスのrunメソッドを呼び出す
# このsuperで「puts "車で#{distance}キロ走ります。"」を出力
# その下の行にTruckクラスに追加したい要素を定義
# 今回は、「大きな荷物を乗せて走ります。」と出力させたいので
# putsを使用して定義している