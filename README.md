# nijisanji-ime-dic

Microsoft IMEなどで利用することを想定した「にじさんじ」関連用語の用語辞書です。
MITライセンスにて配布しています。

## QuickStart

+ 最新版を「名前をつけてダウンロード」: <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/dic.txt>
+ あなたのご利用になっている日本語入力システム（Microsoft IMEなど）にインポート（やり方はググりな！）
+ でわな〜

## 動作環境

Microsoft IME形式の辞書ファイルを読み込める入力システムであれば、
多くのもので利用可能かと思います。

### 動作確認済環境

- Microsoft IME (Windows 10 2019 Fall Update)
- Google日本語入力
- Mozc (Crostini環境)

## Apple製品で利用する場合

多くのApple純正入力環境（macOS、iOS、iPadOS）の日本語入力システムでは、
本辞書ファイルは扱うことができません。

将来的には.plist形式での同時提供も検討していますが、
現状は以下のワークアラウンドをご利用ください。

- Google日本語入力などを利用する（消極的な解決策ですね）
- 以下の方法で.plist形式へ変換します
  + いったん、macOSのGoogle日本語入力へ本辞書ファイルを読み込ませ、Google日本語入力形式で書き出します
  + <https://startide.jp/comp/im/userdic/> をインストールし、`ruby userdic google apple < (google-dic-file) > (apple-plist-file)`のような形で変換する[^1]

いずれにせよ、現状でiOS/iPadOSへの.plist直接登録は難しいと思うので、macOSからiCloud経由での登録がもっとも無難です。

[^1] このツールは品詞がメンテナンスされていないようなので、直接`ruby userdic msime apple < dic.txt > (apple-plist-file)`のようにするとエラーが大量に発生します。

## Google製品で利用する場合

Google日本語入力で動作確認をとっています。また、筆者のメイン執筆環境はChromebook Linux環境(Crostini)のため、Mozcでも動作確認をしています。

一方、Androidで「Gboard」（Googleが製作した多言語キーボードアプリ）を利用する場合、そのままの形では本辞書ファイルを扱うことができません。
ワークアラウンドについては調査中です。[^2]

[^2] あるにはあるのですが、Dev版のみの機能の可能性もありややこしいため

## 収録する基準について

この辞書を作るきっかけとなったのは、二次創作文章を入力する際に固有名詞を変換しづらかったことに依ります。
そのため、既存の[にじさん辞書](https://docs.google.com/spreadsheets/d/11R3Ke1DbFCt7yAbAlukpSiQfDTC1KOiE53IezB4Iu1s/edit#gid=136950780)と異なり、
**チャットで多用するようなフレーズのショートカットなどの収録は目指していません。**

そうした辞書を御用命の形は、forkしていただくか、既存のにじさん辞書をご利用ください。

## ToDo

- 定期的なメンテナンス
- カテゴリの追加？
