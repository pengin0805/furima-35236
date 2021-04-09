require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録' do
    context 'ユーザーの新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it '重複したemailが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Email has already been taken'
      end
      it 'emailに@がないと登録できない' do
        @user.email = 'testyahoo.com'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'a1111'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end
      it 'passwordは半角英数字が混合されていれば登録が可能なこと' do
        expect(@user).to be_valid
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password = 'a1111a'
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'passwordとpassword_confirmationが一致していないと登録できない' do
        @user.password = 'a1111a'
        @user.password_confirmation = '1aaaa1'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end

    context 'ユーザーの新規登録できないとき' do
      it 'last_nameが空と登録できない' do
        @user.last_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name can't be blank"
      end
      it 'first_nameが空と登録できない' do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "First name can't be blank"
      end
      it 'last_nameは半角での入力だと登録できない' do
        @user.last_name = 'ﾎﾘｺｼ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Last name は全角（漢字・ひらがな・カタカナ）であること'
      end
      it 'first_nameは半角での入力だと登録できない' do
        @user.first_name = 'ﾕｳｷ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'First name は全角（漢字・ひらがな・カタカナ）であること'
      end
      it 'last_name_kanaが空と登録できない' do
        @user.last_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name kana can't be blank"
      end
      it 'first_name_kanaが空と登録できない' do
        @user.first_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "First name kana can't be blank"
      end
      it 'last_name_kanaは半角での入力だと登録できない' do
        @user.last_name_kana = 'ﾎﾘｺｼ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Last name kana は全角であること'
      end
      it 'first_name_kanaは半角での入力だと登録できない' do
        @user.first_name_kana = 'ﾎﾘｺｼ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'First name kana は全角であること'
      end
      it 'birthdayが空と登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Birthday can't be blank"
      end
    end
  end
end
