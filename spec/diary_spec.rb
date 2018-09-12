require "diary.rb"

describe Diary do
  describe "#add_entries" do
		it 'adds an entry to the diary' do
			subject.lock.unlock
			subject.add_entries(:entry)
			expect(subject.entries).to include :entry
		end
		it 'raises error when adding entry to a locked diary' do
			expect {subject.add_entries(:entry)}.to raise_error "Diary is locked!"
		end
	end

	describe '#get_entries' do
		it 'retrieves the list of entries' do
			subject.lock.unlock
			expect(subject.get_entries).to eq(subject.entries)
		end		
		it 'raises error if diary is locked' do
			expect {subject.get_entries}.to raise_error "Diary is locked!"
		end
	end
end