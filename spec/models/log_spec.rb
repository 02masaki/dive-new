require 'rails_helper'

RSpec.describe Log, type: :model do
  before do
    @log = FactoryBot.build(:log)
  end
  describe '新規ログの保存' do
    context "ログが保存できる場合" do
      it "日付、深度、水温、時間、場所、スーツ、透視度と感想が存在すれば保存される" do
        expect(@log).to be_valid
      end
    end
    context "ログが保存できない場合" do
      it "日付がないとログは保存できない" do
        @log.date = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Date can't be blank")
      end 
      it "深度がないとログは保存できない" do
        @log.depth = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Depth can't be blank", "Depth is invalid")
      end 
      it "時間がないとログは保存できない" do
        @log.min = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Min can't be blank", "Min is invalid")
      end 
      it "場所がないとログは保存できない" do
        @log.place = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Place can't be blank")
      end 
      it "透視度がないとログは保存できない" do
        @log.transparency = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Transparency can't be blank", "Transparency is invalid")
      end 
      it "水温がないとログは保存できない" do
        @log.temperature = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Temperature can't be blank", "Temperature is invalid")
      end 
      it "スーツがないとログは保存できない" do
        @log.suit = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Suit can't be blank")
      end 
      it "感想がないとログは保存できない" do
        @log.impressions = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Impressions can't be blank")
      end     
      it "ユーザーが紐付いていないとログは保存できない" do
        @log.user = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("User must exist")
      end
    end
  end
end
