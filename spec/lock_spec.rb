require "lock.rb"

describe Lock do

	it { is_expected.to respond_to(:locked)}
	it { is_expected.to respond_to(:entries)}
	let(:entry){double(:entry)}


	describe '#unlock' do
		it 'unlocks the diary' do
			subject.unlock
			expect(subject.locked).to eq(false)
		end
	end

	describe '#lock' do
		it 'locks the diary' do
			subject.unlock
			subject.lock
			expect(subject.locked).to eq(true)
		end
	end
end    