# $OpenBSD: Makefile,v 1.64 2013/03/11 11:37:54 espie Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

DISTNAME =		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX}

SHARED_LIBS =		kpathsea	5.0
SHARED_LIBS +=		ptexenc		2.0

WANTLIB +=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c expat
WANTLIB +=		fontconfig freetype gd jpeg lcms2 m
WANTLIB +=		openjpeg png>=3 poppler pthread pthread-stubs stdc++
WANTLIB +=		t1>=4 tiff ttf xcb z

RUN_DEPENDS =		print/ghostscript/gnu \
			print/detex \
			print/dvi2tty \
			print/ps2eps \
			print/psutils \
			print/t1utils \
			print/latex-mk \
			texlive_texmf-minimal-${V}:print/texlive/texmf,-main

LIB_DEPENDS =		devel/t1lib \
			graphics/png \
			graphics/gd \
			print/freetype \
			print/poppler

MODULES =		textproc/intltool converters/libiconv
# These following two modules are just for variable substitution in patches
# They are not real dependencies of _base, but of _texmf-full
MODULES +=		lang/ruby lang/python
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
SUBST_VARS +=		MODRUBY_BINREV MODPY_VERSION

# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

# Don't put ${PREFIX}/include in CPPFLAGS or system icu .h's are picked up
# TeX Live uses a modified version of icu.
CPPFLAGS =	-I${X11BASE}/include \
		-I${TRUEPREFIX}/include/poppler

# Bug in ICU build system
# http://tug.org/pipermail/tlbuild/2012q2/002348.html
CPPFLAGS +=	-DU_PLATFORM=U_PF_BSD

# Big endian ICU bug
# http://tug.org/pipermail/tlbuild/2012q2/002266.html
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
USE_LIBTOOL =	Yes

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
			--with-libpng-includes=${LOCALBASE}/include/libpng \
			--with-libpng-libdir=${LOCALBASE}/lib \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-pnglib-libdir=${LOCALBASE}/lib \
			--with-pnglib-include=${LOCALBASE}/include/libpng \
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

# substitute ruby and python binary names
pre-configure:
	${SUBST_CMD} ${WRKSRC}/texk/texlive/context/mtxrun

# just to silence error - never used
pre-install:
	mkdir -p ${WRKSRC}/inst

# symlinks that would have been installed by texlinks.
# texlinks can not do this itself in the fake dir, as it requires
# a fully hashed texmf tree and working kpse configuration.
ALEPH_LN =	lamed
LUATEX_LN =	dvilualatex dviluatex lualatex
PDFTEX_LN =	amstex cslatex csplain eplain etex jadetex latex mex \
		mllatex mltex pdfcslatex pdfcsplain pdfetex pdfjadetex \
		pdflatex pdfmex pdfxmltex physe phyzzx texsis utf8mex \
		xmltex
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

