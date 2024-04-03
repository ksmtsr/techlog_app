FactoryBot.define do
  factory :user do
    # ユニークキーである email の一部だけが異なる、複数の User を作成する Factory 
    nickname {'テスト太郎'}
    sequence :email do |n|
      "test#{n}@example.com"
    end
    password {'111111'}
    password_confirmation {'111111'}
  end
end
