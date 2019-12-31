# nijisanji-ime-dic

Microsoft IMEなどで利用することを想定した「にじさんじ」関連用語の用語辞書です。
MITライセンスにて配布しています。

macOSの既定の日本語入力環境にも対応しました！

## QuickStart（Windows/Microsoft IME or Google日本語入力）

1. 最新版を「名前をつけて保存」→ <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/dic.txt>
1. あなたのご利用になっている日本語入力システム（Microsoft IMEなど）にインポート（やり方はググりな！）
1. でわな〜

## QuickStart（macOSの日本語入力環境）

1. 最新版を「名前をつけて保存」→ <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/dic.plist>
1. 「システム環境設定」→「キーボード」→「ユーザ辞書」を選択
1. ダウンロードしたdic.plistファイルを一覧にドロップ
1. やっちゃー！

## 動作環境

Microsoft IME形式の辞書ファイルを読み込める入力システムであれば、
多くのもので利用可能かと思います。

macOS向けのplist形式も準備しました。
なお、macOSの辞書登録はシステムの仕様上品詞をサポートしていません。

### 動作確認済環境

#### dic.txt（Microsoft IME形式）

- Microsoft IME (Windows 10 2019 Fall Update)
- Google日本語入力
- Mozc (Crostini環境)

#### dic.plist（macOS形式）

- macOS 10.15.2 Catalina

## iOS/iPadOSで利用する場合

iOSとiPadOSの既定の日本語入力システムでは、
本辞書ファイルは扱うことができません。

現状ではmacOSで登録し、iCloud経由で同期するのがもっとも簡単です。

## Google製品で利用する場合

Google日本語入力で動作確認をとっています。また、筆者のメイン執筆環境はChromebook Linux環境(Crostini)のため、Mozcでも動作確認をしています。

一方、Androidで「Gboard」（Googleが製作した多言語キーボードアプリ）を利用する場合、そのままの形では本辞書ファイルを扱うことができません。

機械的に変換したものを用意しましたが、
登録できても変換候補に出ない、コメントアウトされているはずの単語が登録されているなどの不具合が生じます。
そのむね了解の上ご使用ください。

### QuickStart（Gboard for Android）

1. 最新版を「名前をつけて保存」→ <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/dic.zip>
1. **ZIPファイルを展開せず、**Gboardアプリの「単語リスト」→「日本語」でインポート。なお、インポートのメニューが表示されない場合もあります（詳細は不明）。
1. おけまるリンゴジュース！

## 収録する基準について

この辞書を作るきっかけとなったのは、二次創作文章を入力する際に固有名詞を変換しづらかったことに依ります。
そのため、既存の[にじさん辞書](https://docs.google.com/spreadsheets/d/11R3Ke1DbFCt7yAbAlukpSiQfDTC1KOiE53IezB4Iu1s/edit#gid=136950780)と異なり、
**チャットで多用するようなフレーズのショートカットなどの収録は目指していません。**

そうした辞書を御用命の方は、forkしていただくか、既存のにじさん辞書をご利用ください。

## dic.txtからdic.plistとdic.zipを生成する

iconv、Rubyの実行環境と userdic-ng 1.0 以降が必要です。

<https://github.com/Umichang/userdic-ng>

詳しくは[Makefile](Makefile)を読んでなんとかしてください……

## Thanks

- [にじさんじ非公式Wiki](https://wikiwiki.jp/nijisanji/)
- [にじさんじDiscord部](https://twitter.com/njsnj_discord/)
- [THE IDOLM@STER IMEユーザー辞書登録用テキスト](https://ime.imas-db.jp/)

## ToDo

- 定期的なメンテナンス
  - 月見しずく卒業に関する対応（2020年1月中旬を予定）
  - 遠北千南卒業に関する対応（2020年3月末を予定）
- カテゴリの追加？
