require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録' do
    context 'ユーザーの新規登録できないとき' do
     it 'nicknameが空では登録できない' do
     end
     it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
     end
     it 'emailが空では登録できない' do
     end
     it '重複したemailが存在する場合登録できないこと' do
     end
     it 'emailに@が空と登録できない' do
     end
     it 'passwordが空では登録できない' do
     end
     it 'passwordが5文字以下では登録できない' do
     end
     it 'passwordは半角英数字が混合されていれば登録が可能なこと' do
     end
     it 'passwordが存在してもpassword_confirmationが空では登録できない' do
     end
     it 'passwordとpassword_confirmationが一致していないと登録できない' do
     end
    end

    context 'ユーザーの新規登録できないとき' do
      it 'last_nameが空と登録できない' do
      end
      it 'first_nameが空と登録できない' do
      end
      it 'last_nameは半角での入力だと登録できない' do
      end
      it 'first_nameは半角での入力だと登録できない' do
      end
      it 'last_name_kanaが空と登録できない' do
      end
      it 'first_name_kanaが空と登録できない' do
      end
      it 'last_name_kanaは半角での入力だと登録できない' do
      end
      it 'first_name_kanaは半角での入力だと登録できない' do
      end
      it 'birthdayが空と登録できない' do
      end
    end
  end
end
