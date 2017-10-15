# $OpenBSD: Makefile,v 1.93 2017/10/15 19:07:33 kili Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

# This year they used a different datestamp on the -source tarball.
DISTNAME =		texlive-${DIST_V}b-source
PKGNAME =		texlive_base-${V}
WRKDIST =		${WRKDIR}/texlive-${DIST_V}-source
REVISION =		3

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX}

SHARED_LIBS =		kpathsea	8.1 # 8.2
SHARED_LIBS +=		ptexenc		5.1 # 4.4
SHARED_LIBS +=		synctex		1.0 # 19.0
SHARED_LIBS +=		texlua52	0.0 # 7.4

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xi Xmu Xpm Xrender Xt
WANTLIB += c cairo expat fontconfig freetype gd glib-2.0 graphite2
WANTLIB += harfbuzz harfbuzz-icu iconv icudata icui18n icuio icuuc intl
WANTLIB += jpeg lcms2 m openjp2 paper pcre pixman-1 png poppler
WANTLIB += potrace pthread pthread-stubs ${COMPILER_LIBCXX} tiff webp xcb
WANTLIB += xcb-render xcb-shm z zzip
WANTLIB += ${LIBCXX}

RUN_DEPENDS =		print/ghostscript/gnu \
			print/detex \
			print/dvi2tty \
			print/ps2eps \
			print/psutils \
			print/t1utils \
			texlive_texmf-buildset-${V}:print/texlive/texmf,-buildset

LIB_DEPENDS =		converters/libiconv \
			graphics/png \
			graphics/gd \
			print/poppler \
			graphics/cairo \
			textproc/icu4c \
			graphics/graphite2 \
			devel/harfbuzz,-icu \
			print/libpaper \
			archivers/zziplib \
			graphics/potrace

MODULES =		textproc/intltool perl

# c++-11 required for poppler
COMPILER =		base-clang ports-gcc

# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

CPPFLAGS =	-I${X11BASE}/include \
		-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/poppler

CXXFLAGS +=	-std=c++11

LDFLAGS =	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib

CONFIGURE_ENV +=	TL_MAKE=${GMAKE} \
			CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"

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
			--with-system-gd \
			--with-system-libpng \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-system-zlib \
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
			--disable-luajittex \
			--disable-mfluajit \
			--with-system-xpdf \
			--with-system-icu \
			--with-system-cairo \
			--with-system-harfbuzz \
			--with-system-graphite2 \
			--with-system-poppler \
			--with-system-libpaper \
			--with-system-zziplib \
			--with-system-potrace

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
PDFTEX_LN =	amstex cslatex csplain eplain etex jadetex latex mex mllatex mltex \
		pdfcslatex pdfcsplain pdfetex pdfjadetex pdflatex pdfmex \
		pdfxmltex texsis utf8mex xmltex
EPTEX_LN =	platex
EUPTEX_LN =	uplatex
XETEX_LN =	xelatex
TEX_LN =	lollipop

EXTRA_ROOT =	${WRKDIR}/texlive-${DIST_V}-extra

post-install:
	rm -Rf ${WRKSRC}/inst

	# Following upstream's process, we don't install any texmf
	# files from texlive_base. These will be installed from the
	# texlive_temxf-* ports. Similarly for manuals and infos.
	rm -Rf ${PREFIX}/share/texmf-dist/
	rm -Rf ${PREFIX}/{man,info}

	# Users should not use tlmgr (tex live package manager)
	rm ${PREFIX}/bin/tlmgr

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

