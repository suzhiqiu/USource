module Pod
  class Command
    class Usource < Command
      class Clean < Usource
        self.summary = '删除所有已经下载的源码'
        self.arguments = []

        def run
          path = Config.compilePath
          delete(path)
        end
        
        def delete(path)
            UI.puts "路径:#{path}".red
            UI.puts "正在删除中,请稍候...".red
            command = "rm -rf  #{path}"
            output = `#{command}`
            UI.puts "删除成功!".red
        end
   
      end
    end
  end
end
