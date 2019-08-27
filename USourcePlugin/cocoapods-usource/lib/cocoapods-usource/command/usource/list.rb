module Pod
  class Command
    class List < Command
      self.summary = '组件二进制化查看源码插件'

      self.description = <<-DESC
         通过二进制对应源码放在临时目录中,让二进制出现断点时可以跳到对应的源码。
      DESC

      self.arguments = 'COMMAND'
      
      def self.options
      [
      ['--code-dependencies', '使用源码依赖'],
      ['--allow-prerelease', '允许使用 prerelease 的版本'],
      ['--use-modular-headers', '使用 modular headers (modulemap)'],
      ['--no-clean', '保留构建中间产物'],
      ['--no-zip', '不压缩静态 framework 为 zip'],
      ].concat(super)
     end

      def initialize(argv)
        @name = argv.shift_argument
        super
      end

      def validate!
        super
        help! 'A Pod name is required.' unless @name
      end

      def run
        UI.puts "Add your implementation for the cocoapods-usource plugin in #{__FILE__}"
      end
    end
  end
end
