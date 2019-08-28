module Pod
  class Command
    class Usource < Command
      class List < Usource
        self.summary = '展示所有已经下载的源码以及大小'

        def run
          path = '/Users/suzhiqiu/Downloads/q'
          list(path)
        end

        def list(path)
          UI.puts "路径:#{path}".red
          UI.puts "正在统计大小...".red
          command = "du -sh   #{path}/* | sort -n"
          output = `#{command}`
          UI.puts "#{output}"
          UI.puts "结束统计!".red
        end
        
      end
    end
  end
end
