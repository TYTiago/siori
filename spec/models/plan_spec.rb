require 'rails_helper'

RSpec.describe Plan, type: :model do
  before do
    @plan = FactoryBot.build(:plan)
  end
  describe 'ユーザー新規登録' do
    it "全ての条件を入力すると登録ができる" do
      user = create(:user)
      plan = build(:plan, user_id: user[:id])
      expect(plan).to be_valid
    end
    it 'titleが空では登録できない' do
      @plan.title  = ''
      @plan.valid?
      expect(@plan.errors.full_messages).to include ("Title can't be blank")
    end
    it 'placeが空では登録できない' do
      @plan.place = ''
      @plan.valid?
      expect(@plan.errors.full_messages).to include ("Place can't be blank")
    end
    it 'start_timeが空では登録できない' do
      @plan.start_time = ''
      @plan.valid?
      expect(@plan.errors.full_messages).to include ("Start time can't be blank")
    end
    it 'imageが空では保存できないこと' do
      @plan.image = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("User can't be blank")
    end
  end
end