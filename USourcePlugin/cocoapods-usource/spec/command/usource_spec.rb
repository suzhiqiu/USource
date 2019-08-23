require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Usource do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ usource }).should.be.instance_of Command::Usource
      end
    end
  end
end

