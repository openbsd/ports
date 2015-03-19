# $OpenBSD: Makefile,v 1.77 2015/03/19 12:12:20 naddy Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

DISTNAME =		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}
REVISION =		4

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX}

SHARED_LIBS =		kpathsea	6.0
SHARED_LIBS +=		ptexenc		3.0

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xrender Xt c
WANTLIB += cairo expat fontconfig freetype gd glib-2.0 graphite2
WANTLIB += harfbuzz icudata icui18n icuio icuuc intl jpeg lcms2
WANTLIB += m openjpeg pcre pixman-1 png>=3 poppler pthread pthread-stubs
WANTLIB += stdc++ t1>=4 tiff ttf vpx xcb xcb-render xcb-shm z


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
			print/poppler \
			graphics/cairo \
			textproc/icu4c \
			graphics/graphite2 \
			devel/harfbuzz

# Needs the header, but does not actually link with the lib
BUILD_DEPENDS +=	devel/harfbuzz,-icu

MODULES =		textproc/intltool converters/libiconv
# These following modules are mostly for variable substitution in patches
# They are not real dependencies of _base, but of _texmf-full
MODULES +=		lang/ruby x11/tk
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
SUBST_VARS +=		MODRUBY_BINREV MODTK_VERSION


# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

CPPFLAGS =	-I${X11BASE}/include \
		-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/poppler \
		-I${LOCALBASE}/include/freetype1/freetype

LDFLAGS =	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib

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

CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--with-system-freetype2 \
			--with-system-freetype \
			--with-system-gd \
			--with-system-libpng \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-system-zlib \
			--with-system-t1lib \
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
			--with-system-xpdf \
			--with-system-icu \
			--with-system-cairo \
			--with-system-harfbuzz \
			--with-system-graphite2 \
			--with-system-poppler

SUBST_VARS +=		TRUEPREFIX LOCALBASE

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

