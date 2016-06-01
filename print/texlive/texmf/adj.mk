# $OpenBSD: adj.mk,v 1.3 2016/06/01 12:47:30 edd Exp $
#
# Replace interpreter paths in these files.
#
# Use grep to find files with bogus (non-absolute, non-openbsd friendly)
# shebang paths and add them here.

SCRIPTS_DIR =	texmf-dist/scripts

MODPY_ADJ_FILES =	${SCRIPTS_DIR}/de-macro/de-macro \
			${SCRIPTS_DIR}/dviasm/dviasm.py \
			${SCRIPTS_DIR}/ebong/ebong.py \
			${SCRIPTS_DIR}/latex-make/figdepth.py \
			${SCRIPTS_DIR}/latex-make/gensubfig.py \
			${SCRIPTS_DIR}/latex-make/latexfilter.py \
			${SCRIPTS_DIR}/latex-make/svg2dev.py \
			${SCRIPTS_DIR}/latex-make/svgdepth.py \
			${SCRIPTS_DIR}/lilyglyphs/lily-glyph-commands.py \
			${SCRIPTS_DIR}/lilyglyphs/lily-image-commands.py \
			${SCRIPTS_DIR}/lilyglyphs/lily-rebuild-pdfs.py \
			${SCRIPTS_DIR}/lilyglyphs/lilyglyphs_common.py \
			${SCRIPTS_DIR}/pygmentex/pygmentex.py \
			${SCRIPTS_DIR}/pythontex/depythontex.py \
			${SCRIPTS_DIR}/pythontex/depythontex2.py \
			${SCRIPTS_DIR}/pythontex/depythontex3.py \
			${SCRIPTS_DIR}/pythontex/pythontex.py \
			${SCRIPTS_DIR}/pythontex/pythontex2.py \
			${SCRIPTS_DIR}/pythontex/pythontex3.py \
			${SCRIPTS_DIR}/pythontex/pythontex_2to3.py \
			${SCRIPTS_DIR}/pythontex/pythontex_install.py \
			${SCRIPTS_DIR}/pythontex/pythontex_install_texlive.py \
			${SCRIPTS_DIR}/texliveonfly/texliveonfly.py

RUBY_ADJ_FILES =	${SCRIPTS_DIR}/context/ruby/textools.rb \
			${SCRIPTS_DIR}/context/ruby/texmfstart.rb \
			${SCRIPTS_DIR}/context/ruby/texexec.rb \
			${SCRIPTS_DIR}/context/ruby/rlxtools.rb \
			${SCRIPTS_DIR}/context/ruby/imgtopdf.rb \
			${SCRIPTS_DIR}/context/ruby/pstopdf.rb \
			${SCRIPTS_DIR}/context/ruby/xmltools.rb \
			${SCRIPTS_DIR}/context/ruby/ctxtools.rb \
			${SCRIPTS_DIR}/context/ruby/pdftools.rb \
			${SCRIPTS_DIR}/context/ruby/tmftools.rb \
			${SCRIPTS_DIR}/convbkmk/convbkmk.rb \
			${SCRIPTS_DIR}/match_parens/match_parens

# XXX a2ping is not substituted due to no bin/ prefix
MODPERL_ADJ_FILES =	${SCRIPTS_DIR}/a2ping/a2ping.pl \
			${SCRIPTS_DIR}/authorindex/authorindex \
			${SCRIPTS_DIR}/bundledoc/bundledoc \
			${SCRIPTS_DIR}/bundledoc/arlatex \
			${SCRIPTS_DIR}/chktex/deweb.pl \
			${SCRIPTS_DIR}/ctanify/ctanify \
			${SCRIPTS_DIR}/dosepsbin/dosepsbin.pl \
			${SCRIPTS_DIR}/epstopdf/epstopdf.pl \
			${SCRIPTS_DIR}/fig4latex/fig4latex \
			${SCRIPTS_DIR}/flowfram/flowfram.perl \
			${SCRIPTS_DIR}/fontools/ot2kpx \
			${SCRIPTS_DIR}/fontools/afm2afm \
			${SCRIPTS_DIR}/fontools/autoinst \
			${SCRIPTS_DIR}/glossaries/makeglossaries \
			${SCRIPTS_DIR}/jfontmaps/kanji-config-updmap.pl \
			${SCRIPTS_DIR}/jfontmaps/kanji-fontmap-creator.pl \
			${SCRIPTS_DIR}/jmlr/makejmlrbook \
			${SCRIPTS_DIR}/kotex-utils/komkindex.pl \
			${SCRIPTS_DIR}/kotex-utils/ttf2kotexfont.pl \
			${SCRIPTS_DIR}/latex-git-log/latex-git-log \
			${SCRIPTS_DIR}/latex2man/latex2man \
			${SCRIPTS_DIR}/latexdiff/latexdiff.pl \
			${SCRIPTS_DIR}/latexdiff/latexrevise.pl \
			${SCRIPTS_DIR}/latexdiff/latexdiff-vc.pl \
			${SCRIPTS_DIR}/latexmk/latexmk.pl \
			${SCRIPTS_DIR}/mkgrkindex/mkgrkindex \
			${SCRIPTS_DIR}/mkjobtexmf/mkjobtexmf.pl \
			${SCRIPTS_DIR}/mkpic/mkpic \
			${SCRIPTS_DIR}/oberdiek/pdfatfi.pl \
			${SCRIPTS_DIR}/pax/pdfannotextractor.pl \
			${SCRIPTS_DIR}/pdfcrop/pdfcrop.pl \
			${SCRIPTS_DIR}/pedigree-perl/pedigree.pl \
			${SCRIPTS_DIR}/perltex/perltex.pl \
			${SCRIPTS_DIR}/pkfix-helper/pkfix-helper \
			${SCRIPTS_DIR}/ps2eps/ps2eps.pl \
			${SCRIPTS_DIR}/psutils/extractres.pl \
			${SCRIPTS_DIR}/psutils/psjoin.pl \
			${SCRIPTS_DIR}/psutils/includeres.pl \
			${SCRIPTS_DIR}/purifyeps/purifyeps \
			${SCRIPTS_DIR}/sty2dtx/sty2dtx.pl \
			${SCRIPTS_DIR}/tex4ht/mk4ht.pl \
			${SCRIPTS_DIR}/texcount/texcount.pl \
			${SCRIPTS_DIR}/texdef/texdef.pl \
			${SCRIPTS_DIR}/texdiff/texdiff \
			${SCRIPTS_DIR}/texdoctk/texdoctk.pl \
			${SCRIPTS_DIR}/texfot/texfot.pl \
			${SCRIPTS_DIR}/texlive/updmap.pl \
			${SCRIPTS_DIR}/texlive/e2pall.pl \
			${SCRIPTS_DIR}/texlive/tlmgrgui.pl \
			${SCRIPTS_DIR}/texlive/tlmgr.pl \
			${SCRIPTS_DIR}/texloganalyser/texloganalyser \
			${SCRIPTS_DIR}/xindy/texindy.pl \
			${SCRIPTS_DIR}/xindy/xindy.pl

LUA_ADJ_FILES =

TEXLUA_ADJ_FILES =	${SCRIPTS_DIR}/cachepic/cachepic.tlu \
			${SCRIPTS_DIR}/checkcites/checkcites.lua \
			${SCRIPTS_DIR}/context/stubs/unix/mtxrun \
			${SCRIPTS_DIR}/context/stubs/win64/mtxrun.lua \
			${SCRIPTS_DIR}/context/lua/mtxrun.lua \
			${SCRIPTS_DIR}/context/lua/third/rst/mtx-t-rst.lua \
			${SCRIPTS_DIR}/epspdf/epspdf.tlu \
			${SCRIPTS_DIR}/luaotfload/mkcharacters \
			${SCRIPTS_DIR}/luaotfload/luaotfload-tool.lua \
			${SCRIPTS_DIR}/luaotfload/luaotfload-legacy-tool.lua \
			${SCRIPTS_DIR}/luaotfload/mkglyphlist \
			${SCRIPTS_DIR}/luaotfload/mkstatus \
			${SCRIPTS_DIR}/m-tx/m-tx.lua \
			${SCRIPTS_DIR}/musixtex/musixtex.lua \
			${SCRIPTS_DIR}/musixtex/musixflx.lua \
			${SCRIPTS_DIR}/pfarrei/a5toa4.tlu \
			${SCRIPTS_DIR}/pfarrei/pfarrei.tlu \
			${SCRIPTS_DIR}/pmx/pmx2pdf.lua \
			${SCRIPTS_DIR}/pmxchords/pmxchords.lua \
			${SCRIPTS_DIR}/ptex2pdf/ptex2pdf.lua \
			${SCRIPTS_DIR}/splitindex/splitindex.tlu \
			${SCRIPTS_DIR}/splitindex/splitindex_main.tlu \
			${SCRIPTS_DIR}/texdoc/texdoc.tlu \
			${SCRIPTS_DIR}/texlive/rungs.tlu \
			${SCRIPTS_DIR}/texlive/test-tlpdb.tlu \
			${SCRIPTS_DIR}/texlive/texconf.tlu \
			${SCRIPTS_DIR}/texlive/lua/texlive/getopt.tlu \
			${SCRIPTS_DIR}/texlive/lua/texlive/tlpdb.tlu

BASH_ADJ_FILES =	${SCRIPTS_DIR}/arara/arara.sh \
			${SCRIPTS_DIR}/dtxgen/dtxgen \
			${SCRIPTS_DIR}/listbib/listbib \
			${SCRIPTS_DIR}/logicpuzzle/createlpsudoku \
			${SCRIPTS_DIR}/logicpuzzle/lpsmag \
			${SCRIPTS_DIR}/ltxfileinfo/ltxfileinfo \
			${SCRIPTS_DIR}/lua2dox/lua2dox_filter \
			${SCRIPTS_DIR}/shipunov/biokey2html.sh

WISH_ADJ_FILES =	${SCRIPTS_DIR}/epspdf/epspdftk.tcl
