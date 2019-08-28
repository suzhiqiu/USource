
module Pod
  class Command
    class Usource < Command
      class Add < Usource
        self.summary = '再不删除二进制的情况下为组件添加源码调试能力,多个组件名称用空格分隔'

        def initialize(argv)
          @update = argv.flag?('update')
          super
        end

        def run        
          addSource
        end

        def addSource()
          command = 'dwarfdump /Users/suzhiqiu/Library/Developer/Xcode/DerivedData/LibSource-gvmdthzquecjhpdskogxxrkgtmhc/Build/Products/Debug-iphonesimulator/libLibSource.a | grep \'DW_AT_comp_dir\''
          UI.puts "#{command}".red
          output = `#{command}`.lines.to_a
          UI.puts "#{output}".red
         # if output.empty
          #  UI.puts "没找到二进制编译路径信息".red
         # end
          UI.puts "开始下载...".red
          command = 'git clone  https://github.com/suzhiqiu/UCARRobot  ~/Downloads/q'
          output = `#{command}`.lines.to_a
          UI.puts "完成...".red
        end
        
      end
    end
  end
end
