if platform?("centos")
  include_recipe 'circonus-broker::centos'
end
if platform?("smartos")
	include_recipe 'circonus-broker::smartos'
end
