require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@user).to be_valid
    end
    it "重複したemailが存在する場合登録できない" do
      @user = create(:user)
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end
    it 'password:半角英数混合(半角英語のみ)' do
      @user.password = 'aaaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password is invalid")
    end
    it 'email:@がない' do
      @user.email = 'testsample'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Email is invalid")
    end
    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it "emailが空では登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Email is invalid"
    end
    it "passwordが空だと登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Password is invalid"
    end
    it "パスワードは２回入力しない場合は進めない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Password confirmation is invalid"
    end
    it "パスワードは6文字以下だと登録できない" do
      @user.password = 'aaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include "Password is invalid"
    end
    end
  end
