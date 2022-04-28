class FortunesController < ApplicationController
  def horoscopes
    @sign=params.fetch("the_sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@sign.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)
    @lucky_number=Zodiac.lucky_numbers
    render({:template => "horoscope_templates/all_horoscopes.html.erb"})

  end
end