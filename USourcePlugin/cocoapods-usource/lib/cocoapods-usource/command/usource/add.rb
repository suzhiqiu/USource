module Pod
  class Command
    class Usource < Command
      class Add < Usource
          self.summary = '组件二进制化查看源码插件1'
          self.description = <<-DESC
             通过二进制对应源码放在临时目录中,让二进制出现断点时可以跳到对应的源码。
          DESC
      end
    end
  end
end
