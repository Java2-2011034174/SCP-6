require "rubygems"
require "arduino_firmata"

class LedtestController < ApplicationController
  def index
  end

 
arduino = ArduinoFirmata.connect
puts "1.6.11" #{arduino.version}
 
loop do
  arduino.digital_write 13, true
  sleep 0.5
  arduino.digital_write 13, false
  sleep 0.5
end
end
