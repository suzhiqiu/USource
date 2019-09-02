module Pod
  class Config
     def Config.home_dir
         Dir.home
     end
     def Config.config_dir
         home_dir + '/Documents/config'
     end

     def Config.config_file
       config_dir + '/config.yml'
     end

     def Config.url_file
       config_dir + '/url.yml'
     end
  end
end


