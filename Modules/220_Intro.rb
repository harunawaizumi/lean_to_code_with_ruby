# Module
# toolbox or container of methods and constants
# module can't creat instances (class does)
# Modules can be mixed into classed to add behavior
# ::symbol -> module constants
# . dot -> module tool

require '../151_Hash_vs_other1'
require_relative '../151_Hash_vs_other1'
module LengthConversions
  WEBSITE = "https://www.google.co.jp/search?q=cat&num=100&rlz=1C5CHFA_enJP695JP695&source=lnms&tbm=isch&sa=X&ved=0ahUKEwisyI3sx8XcAhVaFogKHcR0DWgQ_AUICigB&biw=890&bih=803#imgrc=hMjxy8pUhhc4QM:"

  def self.miles_to_feet(miles) # NG: LengthConversions.miles_to_feet
    miles * 100
  end

  def self.miles_to_inchies(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inchies(miles)
    inches * 2.54
  end
end

puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_centimeters(400)


