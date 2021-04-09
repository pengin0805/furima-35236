class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)\w{6,}\z/
  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥々ー]+\z/
  VALID_NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/

  validates :nickname, presence: true
  validates :last_name, presence: true, format: { with: VALID_NAME_REGEX, message: 'は全角（漢字・ひらがな・カタカナ）であること' }
  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX, message: 'は全角（漢字・ひらがな・カタカナ）であること' }
  validates :last_name_kana, presence: true, format: { with: VALID_NAME_KANA_REGEX, message: 'は全角であること' }
  validates :first_name_kana, presence: true, format: { with: VALID_NAME_KANA_REGEX, message: 'は全角であること' }
  validates :birthday, presence: true
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英数字混合であること' }
end
