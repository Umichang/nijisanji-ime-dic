#
# このファイルは MITライセンスです。詳細はGithub上のリポジトリを参照してください。
# https://github.com/Umichang/nijisanji-ime-dic
#
# Microsoft IME形式の dic.txt からmacOS向けの dic.plist とGboard向けの dic.zip を生成します。
# 実行にはiconv、Rubyの実行環境と userdic-ng 1.0 以降が必要です。
# https://github.com/Umichang/userdic-ng
#

SOURCE	= ./dic.txt
APPLE	= ./dic.plist
GBOARD	= ./dic.zip

all:	apple gboard

apple:
	userdic-ng msime apple < ${SOURCE} > ${APPLE}

gboard:
	iconv -f UTF-16LE -t UTF-8 < ${SOURCE} > dictionary.txt; zip -u ${GBOARD} dictionary.txt ; rm dictionary.txt

clean:
	rm ${APPLE} ${GBOARD}