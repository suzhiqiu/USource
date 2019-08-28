module Pod
  class Command
    class Usource < Command
      class List < Usource
        self.summary = '展示所有已经下载的源码以及大小'
        
        def initialize(argv)
          @update = argv.flag?('update')
          super
        end

        def run
          @path = '/Users/suzhiqiu/Downloads/q'
          list(path)
        end

        def list(path)
          UI.puts "开始统计大小...".red
          # @path = ''
          command = 'du -sh   #{path}/* | sort -n'
          output = `#{command}`
          UI.puts "#{output}"
          UI.puts "结束统计大小...".red
        end
        
      end
    end
  end
end
