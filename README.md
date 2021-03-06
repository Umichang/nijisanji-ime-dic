# nijisanji-ime-dic

Microsoft IMEなどで利用することを想定した「にじさんじ」関連用語の用語辞書です。
MITライセンスにて配布しています。

macOSの既定の日本語入力環境にも対応しました！

2020年2月より愛称を **「にじさんじ文芸辞書」** としました！

## Topics

ver.20210514 より、ファイルを3分割しました。

- main.txt （ライバーの名前と姓名のみを収録。これのみを適用することを推奨）
- collab.txt （コラボ名称を収録。どうしても必要でない限りは適用しないでください。できれば必要なもののみをピックアップして適用してください）
- misc.txt （その他の雑多な項目。余裕があれば適用しても大丈夫です）

**原則として main.txt のみを利用することをお勧めします。**
あまり辞書登録しすぎると、変換精度が下がる可能性があります。

## QuickStart（Windows/Microsoft IME or Google日本語入力）

1. 最新版を「名前をつけて保存」→ <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/main.txt>
1. あなたのご利用になっている日本語入力システム（Microsoft IMEなど）にインポート（やり方はググりな！）
1. でわな〜

## QuickStart（macOSの日本語入力環境）

1. 最新版を「名前をつけて保存」→ <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/main.plist>
1. 「システム環境設定」→「キーボード」→「ユーザ辞書」を選択
1. ダウンロードしたdic.plistファイルを一覧にドロップ
1. やっちゃー！

## 動作環境

Microsoft IME形式の辞書ファイルを読み込める入力システムであれば、
多くのもので利用可能かと思います。

macOS向けのplist形式も準備しました。
なお、macOSの辞書登録はシステムの仕様上品詞をサポートしていません。

### 動作確認済環境

#### main.txt（Microsoft IME形式）

- Microsoft IME (Windows 10 2020 May Update)
- Google日本語入力
- Mozc (Crostini環境)

#### main.plist（macOS形式）

- macOS 11.3.1 Big Sur

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

1. 最新版を「名前をつけて保存」→ <https://raw.githubusercontent.com/Umichang/nijisanji-ime-dic/master/main.zip>
1. **ZIPファイルを展開せず、** Gboardアプリの「単語リスト」→「日本語」でインポート。なお、インポートのメニューが表示されない場合もあります（詳細は不明）。
1. おけまるリンゴジュース！

----

## FAQ（ありがちな質問とその回答）

### 間違いを見つけました、あるいは要望があります

以下の手段でお知らせください。

- 直接pull requestする（わかってる人向け）
- issueを出す（わかってる人向け）
- マシュマロを投げる → <https://marshmallow-qa.com/umic_y_ang>
  - どのバージョンの、どの項目に誤りがあるかを明示していただけると助かります！
- にじさんじDiscord部の#1か#4（IT・ガジェット）あたりで言う
  - 多分#1は内容的な話で、#4は技術的な話で使うとええんちゃうかな

あるいは、TwitterやMastodon（ハッシュタグリレーに参加してるインスタンスのみ）であれば、
以下のハッシュタグも定期的に巡回しています：

- #nijisanji_ime_dic
- #にじさんじ文芸辞書

（もちろん抜け漏れはありますので、その旨ご理解くださいね……）

### 収録する基準について

この辞書を作るきっかけとなったのは、二次創作文章を入力する際に固有名詞を変換しづらかったことに依ります。
そのため、既存の[にじさん辞書](https://docs.google.com/spreadsheets/d/11R3Ke1DbFCt7yAbAlukpSiQfDTC1KOiE53IezB4Iu1s/edit#gid=136950780)と異なり、
**チャットで多用するようなフレーズのショートカットなどの収録は目指していません。**

そうした辞書を御用命の方は、forkしていただくか、既存のにじさん辞書をご利用ください。

### dic.txtからdic.plistとdic.zipを生成する

iconv、Rubyの実行環境と userdic-ng 1.0 以降が必要です。

<https://github.com/Umichang/userdic-ng>

詳しくは[Makefile](Makefile)を読んでなんとかしてください……

### 呼びづらい、あるいは愛称はないのか

プロダクト名はnijisanji-ime-dicですが、
愛称として「にじさんじ文芸辞書」もご利用ください。

### I'm not native Japasene writer, but I want to use this product. so, How can I apply these dictionary files on my Japanese input system?

hmm...If you use Windows 10 (Latest Version), you can add "Japanese Environment", includes Microsoft IME.
or, If you use macOS, you can add "Japanese Environment" via Control Panel.

### ところで原稿の方、進捗どうですか

いや、今本業が忙しくなってきたから……。

----

## 派生したりしたモノ

- [userdic-ng（Rubyで動作するユーザー辞書変換ツール）](https://github.com/Umichang/userdic-ng)
- [pokemon-ime-dic（全ポケモン名辞書）](https://github.com/Umichang/pokemon-ime-dic)

## Thanks

- [にじさんじ非公式Wiki](https://wikiwiki.jp/nijisanji/)
- [にじさんじDiscord部](https://twitter.com/njsnj_discord/)
- [THE IDOLM@STER IMEユーザー辞書登録用テキスト](https://ime.imas-db.jp/)

## ToDo

- Microsoft IME追加辞書サービスへの対応
  - 対応自体はさほど大変ではないが、自動化がめんどくさい
- 定期的なメンテナンス
  - 新しいライバー追加（しばらくなさそう）
- カテゴリの追加？
  - ファン名呼称追加を検討中（意外と変換しにくいものが多かったので）
  - 各種ハッシュタグについては収録基準からやや外れるので消極的
- 近代化（は？）
  - 手動makeとかやめたい、ちゃんとCIしたい（2020年4月以降検討）
  - そもそもuserdic-ng自体がやっつけだし、ちゃんと作り直せ説（他の辞書形式の対応が必要になったらめちゃくちゃ頑張ります）
  - 直接関係なさそうだけど、任意のlinter向けの辞書って必要ですか……？
