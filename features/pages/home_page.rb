require_relative 'page'


class HomePage < Page
  include Calabash::Cucumber::Operations

  def check_button_text()
    wait_for(:timeout => 5) {element_exists("view child button label text:'#{arg1}'")}

  end

  def click_button_by_text()
    touch("view child button label text:'#{arg1}'")

  end

  def check_am_in_home_screen()
    element_exists("view")
    sleep(STEP_PAUSE)
    if (!element_exists("view accessibilityLabel:'nav_item'"))
      screenshot_and_error("NOT IN HOME PAGE")
    end
  end

end
