module Pod
  class Command
    class Usource < Command
      class Clean < Bin
        self.summary = '删除所有已经下载的源码'

        def initialize(argv)
          @update = argv.flag?('update')
          @code  = argv.flag?('code')
          @diff  = argv.flag?('diff')
          super
        end

        def run
         delete
        end
        
        def delete()
            UI.puts "开始删除...".red
            # @path = ''
            command = 'rm -rf  /Users/suzhiqiu/Downloads/q'
            output = `#{command}`
            UI.puts "#{output}"
            UI.puts "结束删除...".red
        end

   
      end
    end
  end
end
