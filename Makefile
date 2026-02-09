#
# このファイルは MITライセンスです。詳細はGithub上のリポジトリを参照してください。
# https://github.com/Umichang/nijisanji-ime-dic
#
# Microsoft IME形式の dic.txt からmacOS向けの dic.plist とGboard向けの dic.zip を生成します。
# 実行にはnkf、Rubyの実行環境と userdic-ng 1.0 以降が必要です。
# https://github.com/Umichang/userdic-ng
#

SRCDIR := utf8
OUTDIR := build

# ソース一覧（utf8/*.txt）
SOURCES := $(wildcard $(SRCDIR)/*.txt)

# 名前一覧: utf8/foo.txt -> foo
NAMES := $(patsubst $(SRCDIR)/%.txt,%,$(SOURCES))

# 出力拡張子リスト
OUT_EXTS := txt plist zip

# 便宜ターゲット一覧（build/foo.all など）
ALL_TARGETS := $(foreach n,$(NAMES),$(OUTDIR)/$(n).all)

.PHONY: all clean $(ALL_TARGETS)

all: $(ALL_TARGETS)

# 各 NAME.all は OUT_EXTS を展開して依存にする
$(foreach n,$(NAMES), \
  $(eval $(OUTDIR)/$(n).all: \
    $(foreach e,$(OUT_EXTS),$(OUTDIR)/$(n).$(e))) \
  $(eval $(OUTDIR)/$(n).all: ; @echo "Built all outputs for $(n)"))

# ------------------------
# 個別の変換ルール
# ------------------------

# utf8/foo.txt -> build/foo.txt
$(OUTDIR)/%.txt: $(SRCDIR)/%.txt | $(OUTDIR)
	@echo "Generating $@ from $<"
	nkf -w16L -Lw $< > $@

# utf8/foo.txt -> build/foo.plist
$(OUTDIR)/%.plist: $(SRCDIR)/%.txt | $(OUTDIR)
	@echo "Generating $@ from $<"
	userdic-ng msime apple < $< > $@

# utf8/foo.txt -> build/foo.zip
$(OUTDIR)/%.zip: $(SRCDIR)/%.txt | $(OUTDIR)
	@echo "Generating $@ from $<"
	cp $< dictionary.txt
	zip -u $@ dictionary.txt
	rm dictionary.txt

# 出力ディレクトリを作成
$(OUTDIR):
	@mkdir -p $@

clean:
	$(RM) -r $(OUTDIR)
