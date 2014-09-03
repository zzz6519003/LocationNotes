require "rails_helper"

RSpec.describe Note, :type => :model do


  it "tagging functions well" do

    lindeman = Note.create!(title: "asdfasdf")
    lindeman.tag_list.add("awesome")
    expect(lindeman.tag_list).to eq(["awesome"])


  end

end
