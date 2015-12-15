Given(/^I see the (shortRent|package) page at home for testAmap$/) do |tab|
  sleep(4)
  res = query("view marked:'Amap_Alert_Error'")
  puts res
  wait_for_element_exists("view marked:'home page'")

  touch("view marked:'#{tab}' child button")

  # querys = "view marked:'#{tab} page'"
  # res = query(querys)
  # if res.empty?
  #   puts (" Show INVALID_USER_KEY  Alert")
  #   touch("view marked:'#{tab}' child button")
  # end

  expected_view = "#{tab} page"
  options = wait_options("#{expected_view}")
  wait_for_element_exists("view marked:'#{expected_view}'",options)
end

When(/^wait for 60s$/) do
	sleep(30)
	puts ("Sleep 60")
end
