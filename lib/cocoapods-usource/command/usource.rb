require 'cocoapods-usource/command/usource/list'
require 'cocoapods-usource/command/usource/add'
require 'cocoapods-usource/command/usource/clean'
require 'cocoapods-usource/command/usource/init'

module Pod
  class Command
    class Usource < Command
      self.summary = '组件二进制化插件.'

      self.description = <<-DESC
        通过讲二进制对应源码放置再临时目录中,让二进制出现断点时可以跳转到对应的源码。
      DESC
      self.abstract_command = true
      self.arguments = []
      def run
        UI.puts "Add your implementation for the cocoapods-usource plugin in #{__FILE__}"
      end

    end
  end
end
