require 'cocoapods-usource/config/uconfig'

module Pod
  class Command
    class Usource < Command
      class Init < Usource
        self.summary = '更新配置 eg.添加新的组件地址'
        self.arguments = []

        def run
           init
        end

        def Init.init()
          UI.puts "路径:#{Config.url_file}".red
          if !File.exist? Config.url_file
            UI.puts "URL文件配置不存在:#{Config.url_file}".red
            return
          end
          UI.puts "URL文件配置存在:#{Config.url_file}".red

        end

      end
    end
  end
end
