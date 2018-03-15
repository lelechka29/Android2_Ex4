Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    if !File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")  #создание папки
    end

    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S") #формат названия скриншота
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screenshots",screenshot_name)   #имя созданной папки, название скриншота
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}","image/png")  #сохранение скриншота в отчет
  end
  $driver.driver_quit
end

#удаление папки со скриншотами (удаление скриншотов от предыдущих запусков).
# Если папки изначально и не было: if File.directory?("screenshots") - true, то выполняется FileUtils.rm_r("screenshots")
# Если false, то действие не выполнится и тест перейдет к After do |scenario|
AfterConfiguration do
 FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end