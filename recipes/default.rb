#
# Cookbook Name:: awscli
# Recipe:: default
#

install_url = node['awscli']['bundle_installer_url']
zip_local_path = local_path_from_url(install_url)
zip_extract_path = zip_extract_path_from_url(install_url)

remote_file zip_local_path do
  source install_url
end

directory zip_extract_path

execute 'extract awscli' do
  command "unzip #{zip_local_path} -d #{Chef::Config[:file_cache_path]}"
end

execute 'install awscli' do
  command "sudo #{zip_extract_path}/install -i /usr/local/aws"\
          ' -b /usr/local/bin/aws'
end
