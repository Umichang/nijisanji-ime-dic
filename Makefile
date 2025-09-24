#
# このファイルは MITライセンスです。詳細はGithub上のリポジトリを参照してください。
# https://github.com/Umichang/nijisanji-ime-dic
#
# Microsoft IME形式の dic.txt からmacOS向けの dic.plist とGboard向けの dic.zip を生成します。
# 実行にはnkf、Rubyの実行環境と userdic-ng 1.0 以降が必要です。
# https://github.com/Umichang/userdic-ng
#

SOURCE = main.utf8.txt collab.utf8.txt misc.utf8.txt vta.utf8.txt
TARGET = \
	main.txt collab.txt misc.txt vta.txt \
	main.plist collab.plist misc.plist vta.plist \
	main.zip collab.zip misc.zip vta.zip \
	main.atok.txt collab.atok.txt misc.atok.txt vta.atok.txt

.SUFFIXES: .utf8.txt .txt .plist .zip .atok.txt

all: ${TARGET}

.utf8.txt.txt:
	nkf -w16L -Lw $< > $@

.utf8.txt.plist:
	userdic-ng msime apple < $< > $@

.utf8.txt.zip:
	cp $< dictionary.txt
	zip -u $@ dictionary.txt
	rm dictionary.txt

.utf8.txt.atok.txt:
	userdic-ng msime atok < $< | nkf -w | ruby -pe 'gsub("ゔ", "ヴ")' | nkf -s -Lw > $@

clean:
	rm ${TARGET}
