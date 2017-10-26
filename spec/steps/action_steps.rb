step ':textをクリックする' do |text|
  click_on text
end

step ':textを選択する' do |text|
  label = all('label').detect{|l| l.text == text}
  label.click
end

step '手相の画像をアップロードする' do
  file_path = Rails.root.join('test', 'fixtures', 'images', 'sample.png')
  attach_file('user_picture', file_path)
end
