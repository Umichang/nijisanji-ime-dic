#
# このファイルは MITライセンスです。詳細はGithub上のリポジトリを参照してください。
# https://github.com/Umichang/nijisanji-ime-dic
#
# Microsoft IME形式の dic.txt からmacOS向けの dic.plist を生成します。
# 実行にはRubyの実行環境と userdic-ng 1.0 以降が必要です。
# https://github.com/Umichang/userdic-ng
#

SOURCE	= dic.txt
TARGET	= dic.plist

${TARGET}:
	userdic-ng msime apple < ./${SOURCE} > ./${TARGET}

clean:
	rm -r ./${TARGET}