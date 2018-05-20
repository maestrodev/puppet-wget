require 'spec_helper'

describe 'wget::authfetch' do
  on_supported_os.each do |os, facts|
    context "on #{os} " do
      let :facts do
        facts
      end
      let(:title) { 'authtest' }
      let(:params) do
        {
          source: 'http://localhost/source',
          destination: destination,
          user: 'myuser',
          password: 'mypassword'
        }
      end

      let(:destination) { '/tmp/dest' }

      context 'with default params', :compile do
        it {
          is_expected.to contain_exec('wget-authtest').with('command' => "wget --no-verbose --user=myuser --output-document=\"#{destination}\" \"http://localhost/source\"",
                                                            'environment' => ["WGETRC=#{destination}.wgetrc"])
        }
        it { is_expected.to contain_file("#{destination}.wgetrc").with_content('password=mypassword') }
      end

      context 'with user', :compile do
        let(:params) do
          super().merge(execuser: 'testuser')
        end

        it {
          is_expected.to contain_exec('wget-authtest').with('command' => "wget --no-verbose --user=myuser --output-document=\"#{destination}\" \"http://localhost/source\"",
                                                            'user' => 'testuser')
        }
      end
    end
  end
end
