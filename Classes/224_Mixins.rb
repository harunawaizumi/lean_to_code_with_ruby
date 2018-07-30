# Mixin
# a module that's added to a class
# Different classes need similar functionalities.
# a module that injects additional behavior into a class
# Class inheritance should be used for an is-a relationship. '<'を使って、classが別のクラスの特徴を引き継ぐ。
# Modules should be used for a has-a relationship. 'include'を使って、ClassがModuleを持つ形になる。
# prepend: to place the module method before the instance method defined in the class

module OlympicMedal
  def purchase(item)
    "#{item} has been purchased!"
  end
end


class Bookstore
  include OlympicMedal
end

class CorneMart < Bookstore
  def purchase(item)
    "#{item} is sold out!"
  end
end

b1 = Bookstore.new
p b1.purchase("food")


c1 = CorneMart.new
p c1.purchase("ice cream")

p CorneMart.ancestors