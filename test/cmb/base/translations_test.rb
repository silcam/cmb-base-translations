require "test_helper"

class Cmb::Base::TranslationsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Cmb::Base::Translations::VERSION
  end

  def test_it_does_something_useful
    I18n.locale = "en"
    assert_equal("Marital Status", I18n.t(:Marital_status))
    I18n.locale = "fr"
    assert_equal("État civil", I18n.t(:Marital_status))
    I18n.locale = "cm"
    assert_equal("translation missing: en.Marital_status", I18n.t(:Marital_status))
  end

end
