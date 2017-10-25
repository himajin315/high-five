step ':nameという一般ユーザがいる' do |name|
  create(:user, :general, name: name)
end

step ':nameという読み手ユーザがいる' do |name|
  create(:user, :reader, name: name)
end

step ':nameとしてログインしている' do |name|
  sign_in User.find_by(name: name)
end

step ':nameはログアウトする' do |name|
  sign_out User.find_by(name: name)
end
