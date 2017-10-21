# language: ja
フィーチャ: ユーザ毎にアクセスできるページが制限される
  背景:
    前提 'user'という一般ユーザがいる
    かつ 'reader_user'という読み手ユーザがいる
    かつ トップページを表示する

  シナリオ: ログインしてないユーザはエントリーページにアクセスできない
    かつ  エントリーページを表示する
    かつ  'Facebookでログイン'が表示されている
    かつ   読み手ページを表示する
    ならば "Facebookでログイン"が表示されている

  シナリオ: 一般ユーザはreadingのページをアクセスすることができない
    もし   'user'としてログインしている
    かつ  エントリーページを表示する
    かつ  '手相の写真をアップロードしてください'が表示されている
    かつ   読み手ページを表示する
    ならば "The page you were looking for doesn't exist."が表示されている

  シナリオ: readerならreadingのページをアクセスすることができる
    もし   'reader_user'としてログインしている
    かつ  エントリーページを表示する
    かつ  '手相の写真をアップロードしてください'が表示されている
    かつ   読み手ページを表示する
    ならば 'Reading Page'が表示されている