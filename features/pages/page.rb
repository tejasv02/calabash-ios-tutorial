require 'calabash-cucumber/operations'
require 'calabash-cucumber/calabash_steps'
require_relative '../pages/Z_reusable_module_page'

$g_testlang=nil
$g_time_wait = 3
$g_take_ss=nil
$g_ss_path=nil

class Page
  include Calabash::Cucumber::Operations
  include ZReusableModule
  def initialize()
    if $g_testlang == nil
      if (ENV['TEST_LANG']==nil)
        print("Set Language before running tests ex:TEST_LANG=\"en_GB\"")
        raise("Language not set")
      end
      $g_testlang=ENV['TEST_LANG']
      mylog("\nset_language "+$g_testlang, 5)

      if(ENV['TAKE_SS=']!=nil)
       $g_take_ss=true
      end
    end
  end

  def set_logged_true
    $g_logged_in=true
  end


  # Dummy function to correct errors
  def embed(a, b, c)
  end

end
