require 'cocoapods-usource/config/uconfig'
require 'yaml'
require 'open-uri'

module Pod
  class Command
    class Usource < Command
      class Init < Usource
        self.summary = '更新配置 eg.添加新的组件地址'
        self.arguments = []

        def run
          Init.init
        end

        def Init.init()
          UI.puts "路径:#{Config.url_file}".red
          if !File.exist? Config.url_file
            UI.puts "URL文件配置不存在:#{Config.url_file}".red
            return false
          end
          #UI.puts "URL文件配置存在:#{Config.url_file}".red
          urlContent = YAML.load(File.open(Config.url_file))
          config_url =  urlContent["config_url"]
          if  config_url.empty?
            UI.puts "config_url路径参数为空".red
            return false
          end

          if !Init.downloadConfig(config_url)
            return false
          end
        end

        def  Init.downloadConfig(path)
          UI.puts "config_url:#{path}".red
          # UI.puts "开始下载配置文件...\n"
          # #file = open(config_url)
          # file = File.open(Config.url_file)
          # UI.puts "打开1#{file}\n"
          # UI.puts "打开2:#{file.read}\n"
          # contents = YAML.load(file)
          # #contents = file.read
          # UI.puts "打开2:#{contents}\n"
          # UI.puts "开始同步配置文件...\n"
          # Config.sync_config(contents)
          # UI.puts "设置完成.\n".green
        end




      end
    end
  end
end
