module AWSCLI
  # Helper methods for working with the AWS CLI
  module Helper
    def local_path_from_url(url)
      package_name = zip_name_from_url(url)
      File.join(Chef::Config[:file_cache_path], package_name)
    end

    def zip_name_from_url(url)
      ::File.basename(url)
    end

    def zip_extract_path_from_url(url)
      path = File.basename(url, File.extname(url))
      File.join(Chef::Config[:file_cache_path], path)
    end
  end
end

Chef::Recipe.send(:include, AWSCLI::Helper)
