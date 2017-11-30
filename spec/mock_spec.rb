require 'spec_helper'
require 'pry'

describe Blender::Mock do
  let(:tenant)    { 'tenant1' }
  # modul musi existovat
  let(:modul)     { Blender::External }
  let(:result)    { tenant.upcase }
  let(:stub)      { double('blender_download_external') }

  describe 'self.mock' do
    it 'calls external module' do
      expect(modul).to receive(:something).with(tenant).and_return(result.downcase)
      described_class.mock(tenant)
    end
    
    it 'calls chain of methods - .new.makame' do
      expect(described_class).to receive(:new).with(tenant).and_return(described_class.new(tenant))
      expect_any_instance_of(described_class).to receive(:makame)
      described_class.mock(tenant)
    end
    
    it 'calls external private method' do
      expect_any_instance_of(described_class).to receive(:external)
      described_class.mock(tenant)
    end

    it 'calls makame instance method' do
      expect_any_instance_of(described_class).to receive(:makame)
      described_class.mock(tenant)
    end

    it 'calls external module using mock' do
      allow(stub).to receive(:something).with(tenant).and_return(result)

      allow_any_instance_of(described_class).to receive(:external).and_return(stub.something(tenant))
      
      expect(described_class.mock(tenant)).to eq(result)
    end
  end
end
