# $OpenBSD: adj.mk,v 1.1 2015/01/10 13:06:29 edd Exp $

SCRIPTS_DIR =		texmf-dist/scripts

MODPY_ADJ_FILES =	${SCRIPTS_DIR}/ebong/ebong.py \
			${SCRIPTS_DIR}/dviasm/dviasm.py \
			${SCRIPTS_DIR}/texliveonfly/texliveonfly.py \
			${SCRIPTS_DIR}/de-macro/de-macro

RUBY_ADJ_FILES =	${SCRIPTS_DIR}/convbkmk/convbkmk.rb \
			${SCRIPTS_DIR}/context/ruby/textools.rb \
			${SCRIPTS_DIR}/context/ruby/texmfstart.rb \
			${SCRIPTS_DIR}/context/ruby/texexec.rb \
			${SCRIPTS_DIR}/context/ruby/rlxtools.rb \
			${SCRIPTS_DIR}/context/ruby/imgtopdf.rb \
			${SCRIPTS_DIR}/context/ruby/pstopdf.rb \
			${SCRIPTS_DIR}/context/ruby/xmltools.rb \
			${SCRIPTS_DIR}/context/ruby/ctxtools.rb \
			${SCRIPTS_DIR}/context/ruby/pdftools.rb \
			${SCRIPTS_DIR}/context/ruby/tmftools.rb \
			${SCRIPTS_DIR}/match_parens/match_parens

# Only scripts which don't already use '#!/usr/bin/perl'
MODPERL_ADJ_FILES =	${SCRIPTS_DIR}/authorindex/authorindex \
			${SCRIPTS_DIR}/xindy/texindy.pl \
			${SCRIPTS_DIR}/xindy/xindy.pl \
			${SCRIPTS_DIR}/flowfram/flowfram.perl \
			${SCRIPTS_DIR}/pdfcrop/pdfcrop.pl \
			${SCRIPTS_DIR}/chktex/deweb.pl \
			${SCRIPTS_DIR}/purifyeps/purifyeps \
			${SCRIPTS_DIR}/mkgrkindex/mkgrkindex \
			${SCRIPTS_DIR}/latex2man/latex2man \
			${SCRIPTS_DIR}/jmlr/makejmlrbook \
			${SCRIPTS_DIR}/bundledoc/bundledoc \
			${SCRIPTS_DIR}/bundledoc/arlatex \
			${SCRIPTS_DIR}/latexdiff/latexdiff.pl \
			${SCRIPTS_DIR}/latexdiff/latexrevise.pl \
			${SCRIPTS_DIR}/latexdiff/latexdiff-vc.pl \
			${SCRIPTS_DIR}/pedigree-perl/pedigree.pl \
			${SCRIPTS_DIR}/ps2eps/ps2eps.pl \
			${SCRIPTS_DIR}/mkjobtexmf/mkjobtexmf.pl \
			${SCRIPTS_DIR}/fig4latex/fig4latex \
			${SCRIPTS_DIR}/fontools/ot2kpx \
			${SCRIPTS_DIR}/fontools/afm2afm \
			${SCRIPTS_DIR}/fontools/autoinst \
			${SCRIPTS_DIR}/jfontmaps/kanji-config-updmap.pl \
			${SCRIPTS_DIR}/jfontmaps/kanji-fontmap-creator.pl \
			${SCRIPTS_DIR}/sty2dtx/sty2dtx.pl \
			${SCRIPTS_DIR}/latexmk/latexmk.pl \
			${SCRIPTS_DIR}/glossaries/makeglossaries \
			${SCRIPTS_DIR}/epstopdf/epstopdf.pl \
			${SCRIPTS_DIR}/ctanify/ctanify \
			${SCRIPTS_DIR}/texdiff/texdiff \
			${SCRIPTS_DIR}/pax/pdfannotextractor.pl \
			${SCRIPTS_DIR}/tex4ht/mk4ht.pl \
			${SCRIPTS_DIR}/pkfix-helper/pkfix-helper \
			${SCRIPTS_DIR}/psutils/psmerge.pl \
			${SCRIPTS_DIR}/psutils/fixtpps.pl \
			${SCRIPTS_DIR}/psutils/fixdlsrps.pl \
			${SCRIPTS_DIR}/psutils/fixwpps.pl \
			${SCRIPTS_DIR}/psutils/fixpsditps.pl \
			${SCRIPTS_DIR}/psutils/extractres.pl \
			${SCRIPTS_DIR}/psutils/fixpspps.pl \
			${SCRIPTS_DIR}/psutils/includeres.pl \
			${SCRIPTS_DIR}/psutils/fixwfwps.pl \
			${SCRIPTS_DIR}/psutils/fixscribeps.pl \
			${SCRIPTS_DIR}/psutils/fixwwps.pl \
			${SCRIPTS_DIR}/psutils/fixfmps.pl \
			${SCRIPTS_DIR}/texloganalyser/texloganalyser \
			${SCRIPTS_DIR}/texdef/texdef.pl \
			${SCRIPTS_DIR}/perltex/perltex.pl \
			${SCRIPTS_DIR}/texdoctk/texdoctk.pl \
			${SCRIPTS_DIR}/oberdiek/pdfatfi.pl \
			${SCRIPTS_DIR}/dosepsbin/dosepsbin.pl \
			${SCRIPTS_DIR}/texcount/texcount.pl \
			${SCRIPTS_DIR}/texlive/updmap.pl \
			${SCRIPTS_DIR}/texlive/e2pall.pl \
			${SCRIPTS_DIR}/texlive/uninstall-win32.pl \
			${SCRIPTS_DIR}/texlive/tlmgrgui.pl \
			${SCRIPTS_DIR}/texlive/tlmgr.pl

TEXLUA_ADJ_FILES =	${SCRIPTS_DIR}/musixtex/musixtex.lua \
			${SCRIPTS_DIR}/musixtex/musixflx.lua \
			${SCRIPTS_DIR}/pmx/pmx2pdf.lua \
			${SCRIPTS_DIR}/ptex2pdf/ptex2pdf.lua \
			${SCRIPTS_DIR}/cachepic/cachepic.tlu \
			${SCRIPTS_DIR}/pfarrei/a5toa4.tlu \
			${SCRIPTS_DIR}/pfarrei/pfarrei.tlu \
			${SCRIPTS_DIR}/splitindex/splitindex.tlu \
			${SCRIPTS_DIR}/splitindex/splitindex_main.tlu \
			${SCRIPTS_DIR}/context/stubs/mswin/mtxrun.lua \
			${SCRIPTS_DIR}/context/stubs/unix/mtxrun \
			${SCRIPTS_DIR}/context/lua/mtxrun.lua \
			${SCRIPTS_DIR}/context/lua/third/rst/mtx-t-rst.lua \
			${SCRIPTS_DIR}/texdoc/texdoc.tlu \
			${SCRIPTS_DIR}/luaotfload/mkcharacters \
			${SCRIPTS_DIR}/luaotfload/luaotfload-tool.lua \
			${SCRIPTS_DIR}/luaotfload/luaotfload-legacy-tool.lua \
			${SCRIPTS_DIR}/luaotfload/mkglyphlist \
			${SCRIPTS_DIR}/epspdf/epspdf.tlu \
			${SCRIPTS_DIR}/m-tx/m-tx.lua \
			${SCRIPTS_DIR}/tlgs/gswin32/eps2eps.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2pdf13.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2ps2.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/pdf2dsc.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2ps.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2pdf12.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/pdfopt.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2ascii.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2pdf.tlu \
			${SCRIPTS_DIR}/tlgs/gswin32/ps2pdf14.tlu \
			${SCRIPTS_DIR}/checkcites/checkcites.lua \
			${SCRIPTS_DIR}/texlive/rungs.tlu \
			${SCRIPTS_DIR}/texlive/test-tlpdb.tlu \
			${SCRIPTS_DIR}/texlive/texconf.tlu \
			${SCRIPTS_DIR}/texlive/lua/texlive/getopt.tlu \
			${SCRIPTS_DIR}/texlive/lua/texlive/tlpdb.tlu

# Only scripts that have not been patched to work with /bin/sh or /bin/ksh
BASH_ADJ_FILES =	${SCRIPTS_DIR}/dtxgen/dtxgen \
			${SCRIPTS_DIR}/changes/delcmdchanges.bash \
			${SCRIPTS_DIR}/shipunov/biokey2html.sh \
			${SCRIPTS_DIR}/logicpuzzle/createlpsudoku \
			${SCRIPTS_DIR}/logicpuzzle/lpsmag \
			${SCRIPTS_DIR}/latexfileversion/latexfileversion \
			${SCRIPTS_DIR}/arara/arara.sh \
			${SCRIPTS_DIR}/listbib/listbib \
			${SCRIPTS_DIR}/lua2dox/lua2dox_filter

WISH_ADJ_FILES =	${SCRIPTS_DIR}/epspdf/epspdftk.tcl
