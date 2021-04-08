require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録/ユーザー情報' do
    it 'nicknameが空では登録できない' do
    end
    it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
    end
    it 'emailが空では登録できない' do
    end
    it '重複したemailが存在する場合登録できないこと' do
    end
    it 'emailに@がないと登録できない' do
    end
    it 'passwordが空では登録できない' do
    end
    it 'passwordが5文字以下では登録できない' do
    end
    it 'passwordは半角英数字が混合されていれば、登録が可能なこと' do
    end
    
    it 'passwordが存在してもpassword_confirmationが空では登録できない' do
    end
    it 'nicknameが7文字以上では登録できない' do
    end
    it '重複したemailが存在する場合登録できない' do
    end
  end
end
