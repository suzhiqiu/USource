module Pod
  class Configru
     @@compile_path = ''
     def Config.home_dir
         workdir = Dir.home
         workdir = workdir + '/Documents/ucar'
     end

     def Config.source_dir
          sourceDir = home_dir + '/pods'
          UI.puts "sourceDir:#{sourceDir}".red
          if !Dir.exist?sourceDir
            UI.puts "不存在:#{sourceDir}".red
            Dir.mkdir(sourceDir)
          end
          UI.puts "存在:#{sourceDir}".red
          sourceDir
     end


     def Config.config_dir
         home_dir + '/config'
     end

     def Config.config_file
       config_dir + '/config.yml'
     end

     def Config.url_file
       config_dir + '/url.yml'
     end

     def Config.sync_config(config)
       File.open(Config.config_file, 'w+') do |f|
         f.write(config.to_yaml)
       end
     end

     def  Config.compilePath()
       Config.readConfig
       @@compile_path
     end

     def  Config.readConfig()

       if !File.exist? Config.config_file
         UI.puts "URL文件配置不存在:#{Config.config_file}".red
         return false
       end

       urlContent = YAML.load(File.open(Config.config_file))
       compile_path =  urlContent["CompilePath"]
       if compile_path.empty?
         UI.puts "compile_path路径为空 将使用默认编译路径:~/Documents/ucar/pods".red
         compile_path = '~/Documents/ucar/pods'
       end
       @@compile_path = compile_path
       UI.puts "compile_path:#{ @@compile_path}".red
     end

  end
end


