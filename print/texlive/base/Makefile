# $OpenBSD: Makefile,v 1.114 2020/08/18 18:40:14 edd Exp $

COMMENT-main =		base binaries for TeXLive typesetting distribution
COMMENT-mktexlsr =	mktexlsr for TeXLive typesetting distribution
COMMENT-synctex =	synctex for TeXLive typesetting distribution

DISTNAME =		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}
WRKDIST =		${WRKDIR}/texlive-${DIST_V}-source

MULTI_PACKAGES =	-main -mktexlsr -synctex
PKGNAME-mktexlsr =	texlive_mktexlsr-${V}
PKGNAME-main =		${PKGNAME}
PKGNAME-synctex =	texlive_synctex-${V}

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX}

SHARED_LIBS =		kpathsea	9.0 # 9.2
SHARED_LIBS +=		ptexenc		5.3 # 4.8
SHARED_LIBS +=		synctex		3.0 # 2.0
SHARED_LIBS +=		texlua53        0.1 # 8.5

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xaw Xdmcp Xext Xi
WANTLIB += Xmu Xpm Xrender Xt avahi-client avahi-common c cairo
WANTLIB += cups dbus-1 expat ffi fontconfig freetype gd glib-2.0
WANTLIB += gmp gnutls graphite2 gs harfbuzz hogweed iconv icudata
WANTLIB += icui18n icuio icuuc idn2 ijs intl jbig2dec jpeg kpathsea
WANTLIB += lcms2 lzma m nettle p11-kit paper pcre pixman-1 png tasn1
WANTLIB += tiff unistring webp xcb xcb-render xcb-shm z zstd zzip

WANTLIB-mktexlsr += c

WANTLIB-synctex += c m z

RUN_DEPENDS-main =	print/ghostscript/gnu \
			print/detex \
			print/dvi2tty \
			print/ps2eps \
			print/psutils \
			print/t1utils \
			texlive_texmf-buildset-${V}:print/texlive/texmf,-buildset \
			devel/desktop-file-utils \
			${BASE_PKGPATH},-synctex

LIB_DEPENDS-main =	converters/libiconv \
			graphics/png \
			graphics/gd \
			graphics/cairo \
			textproc/icu4c \
			graphics/graphite2 \
			devel/harfbuzz \
			print/libpaper \
			archivers/zziplib \
			print/ghostscript/gnu \
			${BASE_PKGPATH},-mktexlsr

MODULES =		textproc/intltool perl

# c++-11 required for some subprojects
COMPILER =		base-clang ports-gcc

# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

CPPFLAGS =	-I${X11BASE}/include \
		-I${LOCALBASE}/include

LDFLAGS =	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib

CONFIGURE_ENV +=	TL_MAKE=${GMAKE} \
			CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"

# Can't build in same dir
WRKBUILD =              ${WRKSRC}/Work
CONFIGURE_SCRIPT =      ../configure
MAKE_ENV =		${CONFIGURE_ENV}
TEST_TARGET =		check

USE_GMAKE =	Yes

.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "powerpc"
CFLAGS +=	-fPIC
# somehow base libtool misses -lpng while linking xetex
USE_LIBTOOL =	gnu
.endif

# clisp limits which arches we can use xindy on
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
	${MACHINE} == "powerpc"
BUILD_DEPENDS +=	lang/clisp
RUN_DEPENDS-main +=		lang/clisp
CONFIGURE_ARGS +=	--enable-xindy \
			--disable-xindy-rules
PKG_ARGS +=		-Dxindy=1
.else
PKG_ARGS +=		-Dxindy=0
.endif

# --with-system-poppler and --with-system-xpdf temporarily removed to
# build it with the bundled poppler, because xpdftex fails to build
# without patches and a newer poppler (> 0.58), and it fails at runtime
# with my current patches to build with the new poppler object API.
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
			--disable-luajithbtex \
			--disable-mfluajit \
			--with-system-icu \
			--with-system-cairo \
			--with-system-harfbuzz \
			--with-system-graphite2 \
			--with-system-libpaper \
			--with-system-zziplib

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

.include "../texmf/symlinks.mk"

post-install: tl-symlinks-buildset
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

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "ports-gcc"
CXXFLAGS +=	-std=gnu++11
.endif
