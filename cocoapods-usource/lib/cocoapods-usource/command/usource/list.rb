module Pod
  class Command
    class Usource < Command
      class List < Bin
        self.summary = '展示所有已经下载的源码以及大小'
        
        def initialize(argv)
          @update = argv.flag?('update')
          super
        end

        def run
          list
        end

        def list()
          UI.puts "开始统计大小...".red
          # @path = ''
          command = 'du -sh  /Users/suzhiqiu/Desktop/bin/lib/* | sort -n'
          output = `#{command}`
          UI.puts "#{output}"
          UI.puts "结束统计大小...".red
        end
        
      end
    end
  end
end
