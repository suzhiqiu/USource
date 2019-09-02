module Pod
  class Command
    class Usource < Command
      class Clean < Usource
        self.summary = '删除指定已经下载的源码 没带参数,默认删除所有'
        self.arguments = []

        def initialize(argv)
          @name = argv.shift_argument
          if @name.nil?
            @name = ''
          end
          UI.puts "Clean输入参数:#{@name}".red
          super
        end

        def run
          path = Config.compilePath
          if !@name.empty?
            path = path + '/' + @name
          end
          Clean.delete(path)
        end
        
        def Clean.delete(path)
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
