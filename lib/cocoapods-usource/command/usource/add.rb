
module Pod
  class Command
    class Usource < Command
      class Add < Usource
        self.summary = '再不删除二进制的情况下为组件添加源码调试能力,多个组件名称用逗号分隔'

        def initialize(argv)
          @nameArgv = argv.shift_argument
          #UI.puts "add输入参数:#{@nameArgv}".red
          super
        end

        def run        
          addSource
        end

        def addSource()
          nameArray = @nameArgv.split
          if nameArray.length == 0
           UI.puts "请输入要下载组件源码名称".red
           return 
          end
          nameArray.each_index {|index|
           item = nameArray[index]
           #UI.puts "#{item}".red
           downSource(item)
         }
         UI.puts "下载完成...".red

        end


        def downSource(name)
          #command = "dwarfdump /Users/suzhiqiu/Library/Developer/Xcode/DerivedData/LibSource-gvmdthzquecjhpdskogxxrkgtmhc/Build/Products/Debug-iphonesimulator/libLibSource.a | grep \'DW_AT_comp_dir\'"
          #output = `#{command}`
          # UI.puts "#{output}".red
          # if output.empty
          #  UI.puts "没找到二进制编译路径信息".red
          # end
          localPath =  Config.source_dir + '/' +name

          urlContent = YAML.load(File.open(Config.config_file))
          serverPath =  urlContent[name]
          if serverPath.empty?
            UI.puts "没找到#{name}源码路径信息".red
            return
          end

          if Dir.exist?localPath
            UI.puts "重新下载#{name}".red
            command = "rm -rf  #{localPath}"
            output = `#{command}`
          else
            UI.puts "开始下载#{name}".red
          end

          command = "git clone  #{serverPath}  #{localPath}"
          UI.puts "command:#{command}"
          output = `#{command}`.lines.to_a
          #UI.puts "#{output}".red
        end



      end
    end
  end
end
