execute "update packages" do 
	command "apt-get update" 
end

%w{libpq-dev python-dev postgresql postgresql-contrib}.each do |pkg|
	package pkg do 
		action :install
	end
end