require 'Config'

module Pod
  class Command
    class Usource < Command
      class Update < Usource
        self.summary = '更新配置'
        self.arguments = []

        def run
          Update.update
        end

        def Update.update()
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
