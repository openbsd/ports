# $OpenBSD: Makefile,v 1.74 2014/03/17 23:22:02 sthen Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

DISTNAME =		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}
REVISION =		1

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX}

SHARED_LIBS =		kpathsea	6.0
SHARED_LIBS +=		ptexenc		3.0

WANTLIB +=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c expat
WANTLIB +=		fontconfig freetype gd jpeg lcms2 m
WANTLIB +=		openjpeg png>=3 poppler pthread pthread-stubs stdc++
WANTLIB +=		t1>=4 tiff ttf vpx xcb z

RUN_DEPENDS =		print/ghostscript/gnu \
			print/detex \
			print/dvi2tty \
			print/ps2eps \
			print/psutils \
			print/t1utils \
			print/latex-mk \
			texlive_texmf-buildset-${V}:print/texlive/texmf,-buildset

LIB_DEPENDS =		devel/t1lib \
			graphics/png \
			graphics/gd \
			print/freetype \
			print/poppler

MODULES =		textproc/intltool converters/libiconv
# These following modules are mostly for variable substitution in patches
# They are not real dependencies of _base, but of _texmf-full
MODULES +=		lang/lua lang/ruby lang/python x11/tk perl
MODLUA_RUNDEP =		No
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
SUBST_VARS +=		MODRUBY_BINREV MODPY_VERSION MODTK_VERSION

MODPY_ADJ_FILES =	texk/texlive/linked_scripts/de-macro/de-macro \
			texk/texlive/linked_scripts/dviasm/dviasm.py \
			texk/texlive/linked_scripts/ebong/ebong.py \
			texk/texlive/linked_scripts/texliveonfly/texliveonfly.py

MODRUBY_ADJ_FILES =	convbkmk.rb \
			match_parens

MODPERL_ADJ_FILES =	texk/texlive/linked_scripts/texlive/updmap.pl \
			texk/tetex/updmap-single.pl \
			texk/tex4htk/mk4ht.pl \
			texk/texlive/linked_scripts/authorindex/authorindex \
			texk/texlive/linked_scripts/bundledoc/arlatex \
			texk/texlive/linked_scripts/bundledoc/bundledoc \
			texk/texlive/linked_scripts/ctanify/ctanify \
			texk/texlive/linked_scripts/dosepsbin/dosepsbin.pl \
			texk/texlive/linked_scripts/epstopdf/epstopdf.pl \
			texk/texlive/linked_scripts/fig4latex/fig4latex \
			texk/texlive/linked_scripts/fontools/afm2afm \
			texk/texlive/linked_scripts/fontools/autoinst \
			texk/texlive/linked_scripts/fontools/ot2kpx \
			texk/texlive/linked_scripts/glossaries/makeglossaries \
			texk/texlive/linked_scripts/jfontmaps/updmap-setup-kanji.pl \
			texk/texlive/linked_scripts/latex2man/latex2man \
			texk/texlive/linked_scripts/latexmk/latexmk.pl \
			texk/texlive/linked_scripts/mkgrkindex/mkgrkindex \
			texk/texlive/linked_scripts/mkjobtexmf/mkjobtexmf.pl \
			texk/texlive/linked_scripts/oberdiek/pdfatfi.pl \
			texk/texlive/linked_scripts/pax/pdfannotextractor.pl \
			texk/texlive/linked_scripts/pdfcrop/pdfcrop.pl \
			texk/texlive/linked_scripts/pedigree-perl/pedigree.pl \
			texk/texlive/linked_scripts/perltex/perltex.pl \
			texk/texlive/linked_scripts/pkfix-helper/pkfix-helper \
			texk/texlive/linked_scripts/purifyeps/purifyeps \
			texk/texlive/linked_scripts/sty2dtx/sty2dtx.pl \
			texk/texlive/linked_scripts/tetex/e2pall.pl \
			utils/texdoctk/texdoctk.pl \
			texk/texlive/linked_scripts/texcount/texcount.pl \
			texk/texlive/linked_scripts/texdef/texdef.pl \
			texk/texlive/linked_scripts/texdiff/texdiff \
			texk/texlive/linked_scripts/texlive/tlmgr.pl \
			texk/texlive/tl_scripts/e2pall.pl \
			texk/texlive/linked_scripts/texloganalyser/texloganalyser \
			utils/xindy/xindy-2.4/user-commands/texindy.in \
			utils/xindy/xindy-2.4/user-commands/xindy.in \
			texk/texlive/linked_scripts/jfontmaps/kanji-fontmap-creator.pl \
			texk/texlive/linked_scripts/jfontmaps/kanji-config-updmap.pl \
			texk/texlive/linked_scripts/latexdiff/latexdiff.pl \
			texk/texlive/linked_scripts/latexdiff/latexdiff-vc.pl \
			texk/texlive/linked_scripts/latexdiff/latexrevise.pl

# None this year, but there have been in the past.
LUA_ADJ_SCRIPTS =

TEXLUA_ADJ_SCRIPTS =	texk/texlive/linked_scripts/cachepic/cachepic.tlu \
			texk/texlive/linked_scripts/checkcites/checkcites.lua \
			texk/texlive/linked_scripts/context/stubs/unix/mtxrun \
			texk/texlive/linked_scripts/epspdf/epspdf.tlu \
			texk/texlive/linked_scripts/luaotfload/luaotfload-tool.lua \
			texk/texlive/linked_scripts/luaotfload/mkluatexfontdb.lua \
			texk/texlive/linked_scripts/musixtex/musixflx.lua \
			texk/texlive/linked_scripts/musixtex/musixtex.lua \
			texk/texlive/linked_scripts/pfarrei/a5toa4.tlu \
			texk/texlive/linked_scripts/pfarrei/pfarrei.tlu \
			texk/texlive/linked_scripts/pmx/pmx2pdf.lua \
			texk/texlive/linked_scripts/ptex2pdf/ptex2pdf.lua \
			texk/texlive/linked_scripts/texdoc/texdoc.tlu \
			texk/texlive/linked_scripts/texlive/rungs.tlu \
			utils/pmx/pmx2pdf.lua \

SH_ADJ_SCRIPTS =	texk/texlive/linked_scripts/typeoutfileinfo/typeoutfileinfo.sh \
			texk/texlive/linked_scripts/lua2dox/lua2dox_filter \
			texk/texlive/linked_scripts/ltxfileinfo/ltxfileinfo \
			texk/texlive/linked_scripts/arara/arara.sh \
			texk/texlive/linked_scripts/dtxgen/dtxgen \
			texk/texlive/linked_scripts/listbib/listbib


# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

# Don't put ${PREFIX}/include in CPPFLAGS or system icu .h's are picked up
# TeX Live uses a modified version of icu.
CPPFLAGS =	-I${X11BASE}/include \
		-I${TRUEPREFIX}/include/poppler

# Big endian ICU bug
# http://tug.org/pipermail/tlbuild/2012q2/002266.html
# XXX still needed
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mbe}
CPPFLAGS +=	-DU_IS_BIG_ENDIAN=1
.endif

CONFIGURE_ENV +=	TL_MAKE=${GMAKE} \
			CPPFLAGS="${CPPFLAGS}"

# Can't build in same dir
WRKBUILD =              ${WRKSRC}/Work
CONFIGURE_SCRIPT =      ../configure
MAKE_ENV =		${CONFIGURE_ENV}
# Not worth the effort.
NO_TEST =		Yes

USE_GMAKE =	Yes

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=	-fPIC
.endif

# clisp limits which arches we can use xindy on
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
	${MACHINE} == "powerpc" || ${MACHINE} == "sparc64"
BUILD_DEPENDS +=	lang/clisp
RUN_DEPENDS +=		lang/clisp
CONFIGURE_ARGS +=	--enable-xindy \
			--disable-xindy-rules
PKG_ARGS +=		-Dxindy=1
.else
PKG_ARGS +=		-Dxindy=0
.endif

# Do not link with system icu. TeXLive ICU is not vanilla (Yet)!
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib \
			--with-system-freetype2 \
			--with-system-freetype \
			--with-freetype-includes=${LOCALBASE}/include/freetype1/freetype \
			--with-freetype-libdir=${LOCALBASE}/lib \
			--with-system-gd \
			--with-gd-libdir=${LOCALBASE}/lib \
			--with-system-libpng \
			--with-libpng-includes=${LOCALBASE}/include \
			--with-libpng-libdir=${LOCALBASE}/lib \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-pnglib-libdir=${LOCALBASE}/lib \
			--with-pnglib-include=${LOCALBASE}/include \
			--with-system-zlib \
			--with-system-t1lib \
			--with-t1lib-libdir=${LOCALBASE}/lib \
			--with-t1lib-includes=${LOCALBASE}/include \
			--with-xpdf-includes=${LOCALBASE}/include/poppler \
			--with-xpdf-libdir=${LOCALBASE}/lib \
			--enable-texinfo=no \
			--with-xdvi-x-toolkit=xaw \
			--enable-texi2html=no \
			--enable-detex=no \
			--enable-dvi2tty=no \
			--enable-ps2eps=no \
			--enable-psutils=no \
			--enable-t1utils=no \
			--disable-threads \
			--with-old-mac-fonts \
			--disable-multiplatform \
			--disable-native-texlive-build \
			--with-banner-add="-OpenBSD_Ports" \
			--with-system-xpdf #link poppler

SUBST_VARS +=		TRUEPREFIX LOCALBASE

# substitute paths to script interpreters
pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/texk/texlive/linked_scripts/epspdf/epspdftk.tcl
	cd ${WRKSRC} && \
	    for F in ${LUA_ADJ_SCRIPTS}; do \
	        perl -pi -e '($$. == 1) && s@^.*$$@#!${MODLUA_BIN}@' $$F; \
	    done
	cd ${WRKSRC} && \
	    for F in ${TEXLUA_ADJ_SCRIPTS}; do \
	        perl -pi -e '($$. == 1) && s@^.*$$@#!${PREFIX}/bin/texlua@' $$F; \
	    done
	cd ${WRKSRC} && \
	    for F in ${SH_ADJ_SCRIPTS}; do \
	        perl -pi -e '($$. == 1) && s@^.*$$@#!/bin/sh@' $$F; \
	    done
	${SUBST_CMD} ${WRKSRC}/texk/texlive/linked_scripts/context/stubs/unix/mtxrun

# just to silence error - never used
pre-install:
	mkdir -p ${WRKSRC}/inst

# Symlinks that would have been installed by texlinks.
# texlinks can not do this itself in the fake dir, as it requires
# a fully hashed texmf tree and working kpse configuration.
# Run 'texlinks -u' and then observe the output of 
# 'texlinks -v'. Don't forget to check the links are in the PLIST.
ALEPH_LN =	lamed
LUATEX_LN =	dvilualatex dviluatex lualatex
PDFTEX_LN =	amstex cslatex pdfcslatex csplain pdfcsplain eplain jadetex \
		pdfjadetex latex pdflatex mex pdfmex utf8mex mllatex mltex \
		etex pdfetex texsis xmltex pdfxmltex
EPTEX_LN =	platex
XETEX_LN =	xelatex
EUPTEX_LN =	uplatex

EXTRA_ROOT =	${WRKDIR}/texlive-${DIST_V}-extra

post-install:
	rm -Rf ${WRKSRC}/inst

	# translate some sylinks from ../texmf* to ../share/texmf*
	for link in `find ${PREFIX}/bin -type l`; do \
		dest=`stat -f %Y $${link}`; \
		if ! [ -z "`echo $${dest} | grep -e '^\.\.\/texmf'`" ]; then \
			newdest=`echo $${dest} | sed -e 's/\.\.\/texmf/\.\.\/share\/texmf/g'`; \
			ln -sf $${newdest} $${link}; \
		fi \
	done

	# Updmap needs these perl bits from the extra tarball
	${INSTALL} -d ${PREFIX}/libdata/perl5/site_perl/TeXLive/
	${INSTALL} ${EXTRA_ROOT}/tlpkg/TeXLive/TLUtils.pm \
		${PREFIX}/libdata/perl5/site_perl/TeXLive/
	${INSTALL} ${EXTRA_ROOT}/tlpkg/TeXLive/TLConfig.pm \
		${PREFIX}/libdata/perl5/site_perl/TeXLive/

	# emulate texlinks
	for i in ${ALEPH_LN}; do \
		ln -s ${TRUEPREFIX}/bin/aleph ${PREFIX}/bin/$$i; \
	done
	for i in ${LUATEX_LN}; do \
		ln -s ${TRUEPREFIX}/bin/luatex ${PREFIX}/bin/$$i; \
	done
	for i in ${MPOST_LN}; do \
		ln -s ${TRUEPREFIX}/bin/mpost ${PREFIX}/bin/$$i; \
	done
	for i in ${PDFTEX_LN}; do \
		ln -s ${TRUEPREFIX}/bin/pdftex ${PREFIX}/bin/$$i; \
	done
	for i in ${EPTEX_LN}; do \
		ln -s ${TRUEPREFIX}/bin/eptex ${PREFIX}/bin/$$i; \
	done
	for i in ${XETEX_LN}; do \
		ln -s ${TRUEPREFIX}/bin/xetex ${PREFIX}/bin/$$i; \
	done
	for i in ${EUPTEX_LN}; do \
		ln -s ${TRUEPREFIX}/bin/euptex ${PREFIX}/bin/$$i; \
	done

.include <bsd.port.mk>

