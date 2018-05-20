require 'spec_helper'

describe 'wget' do
  on_supported_os.each do |os, facts|
    next if %w[windows SunOS].include? facts[:kernel]

    context "on #{os} " do
      let :facts do
        facts
      end

      context 'no version specified', :compile do
        it { is_expected.to contain_package('wget').with_ensure('present') }
      end

      context 'manage_package => false', :compile do
        let(:params) { { manage_package: false } }

        it { is_expected.not_to contain_package('wget').with_ensure('present') }
      end

      context 'version is present', :compile do
        let(:params) { { version: 'present' } }

        it { is_expected.to contain_package('wget').with_ensure('present') }
      end

      case facts[:kernel]
      when 'Darwin'
        context 'running on OS X', :compile do
          it { is_expected.not_to contain_package('wget') }
        end
      when 'FreeBSD'
        context 'running on FreeBSD', :compile do
          it { is_expected.to contain_package('wget') }
        end
      end
    end
  end
end
