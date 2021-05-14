#
# このファイルは MITライセンスです。詳細はGithub上のリポジトリを参照してください。
# https://github.com/Umichang/nijisanji-ime-dic
#
# Microsoft IME形式の dic.txt からmacOS向けの dic.plist とGboard向けの dic.zip を生成します。
# 実行にはiconv、Rubyの実行環境と userdic-ng 1.0 以降が必要です。
# https://github.com/Umichang/userdic-ng
#

SOURCE = main.txt collab.txt misc.txt
TARGET = main.plist collab.plist misc.plist main.zip collab.zip misc.zip

.SUFFIXES: .txt .plist .zip

all: ${TARGET}

.txt.plist:
	userdic-ng msime apple < $< > $@

.txt.zip:
	iconv -f UTF-16LE -t UTF-8 < $< > dictionary.txt; zip -u $@ dictionary.txt ; rm dictionary.txt

clean:
	rm ${TARGET}