# Instance Variable
# begin with @symbol (sigil)
# Without the @sigil, the variable would be interpreted as a local variable to the method it is used.
# methodの初期化は、メソッドの新規作成と一緒にクラスがインスタンス化された時に呼ばれる
# methodの初期化は、値をinstance variablesに値を置くことを可能にする。
# instance variable is private, you can't call from outside of the method(encapsulation)
# to call the instance variable, you need to define getter to call.
require_relative '../235_app_store'

class Gadget

  attr_reader :production_number, :apps
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    # NG: production_number -> local variable
    # OK: @production_number -> instance variable
    "Gadget #{@production_number} has the username #{@password}, and self #{self.class}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name}
    apps.delete(app) unless app.nil?
  end

  private

  attr_writer :apps
  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits} - #{middle_digits} - #{end_digits}"
  end


  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end


phone = Gadget.new("haruna", "password")
p phone.username
p phone.password
phone.username=("rubyman")
p phone.username
p phone.password=("bestpasswordever") # NG: phone.password = "bestpasswordever"
phone.install_app :Chat
p phone.apps
p phone.delete_app(:Chat)
p phone.apps

# instanceから呼ばれたmethodの探す順序
# まずはクラスをみて、見つからない場合はその上の階層に探しに行く。
# 1. Class
# 2. Object
# 3. その上のObject
#

