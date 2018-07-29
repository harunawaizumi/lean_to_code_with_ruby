# Instance Variable
# begin with @symbol (sigil)
# Without the @sigil, the variable would be interpreted as a local variable to the method it is used.
# methodの初期化は、メソッドの新規作成と一緒にクラスがインスタンス化された時に呼ばれる
# methodの初期化は、値をinstance variablesに値を置くことを可能にする。
# instance variable is private, you can't call from outside of the method(encapsulation)
# to call the instance variable, you need to define getter to call.
class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}"
  end

  def to_s
    # NG: production_number -> local variable
    # OK: @production_number -> instance variable
    "Gadget #{@production_number} has the username #{@password}, and self #{self.class}"
  end

  def username
    @username
  end

  def username=(new_username)
    @username = new_username
  end

  def production_number
    @production_number
  end

  def password=(new_password)
    @password = new_password
  end
end


phone = Gadget.new
p phone.instance_variables
p phone.username
phone.username=("rubyman")
p phone.username
p phone.password=("bestpasswordever") # NG: phone.password = "bestpasswordever"


# instanceから呼ばれたmethodの探す順序
# まずはクラスをみて、見つからない場合はその上の階層に探しに行く。
# 1. Class
# 2. Object
# 3. その上のObject
#

