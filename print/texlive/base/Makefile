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
DISTFILES.mk =		mktexlsr-${V}.gz

SITES.mk =		https://theunixzoo.co.uk/distfiles/

SHARED_LIBS =		kpathsea	9.0 # 9.2
SHARED_LIBS +=		ptexenc		6.0 # 5.0
SHARED_LIBS +=		synctex		3.0 # 2.0
SHARED_LIBS +=		texlua53        0.1 # 8.5

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xaw Xdmcp Xext Xi
WANTLIB += Xmu Xpm Xrender Xt avahi-client avahi-common c cairo
WANTLIB += crypto cups dbus-1 execinfo expat fontconfig freetype
WANTLIB += gd glib-2.0 graphite2 gs harfbuzz iconv icudata icui18n
WANTLIB += icuio icuuc idn ijs intl jbig2dec jpeg kpathsea lzma
WANTLIB += m openjp2 paper pcre2-8 pixman-1 png sharpyuv ssl tiff
WANTLIB += webp xcb xcb-render xcb-shm z zstd zzip


WANTLIB-mktexlsr += c

WANTLIB-synctex += c m z

RUN_DEPENDS-main =	graphics/libwebp \
			print/ghostscript/gnu \
			print/detex \
			print/dvi2tty \
			print/lcdf-typetools \
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
			devel/pcre2 \
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

# --with-system-xpdf is omitted because it says it can't find the 'xpdf' library.
#  We don't package xpdf as a library.
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
			--with-system-zziplib \
			--disable-lcdf-typetools

SUBST_VARS +=		TRUEPREFIX LOCALBASE

# just to silence error - never used
pre-install:
	mkdir -p ${WRKSRC}/inst

EXTRA_ROOT =	${WRKDIR}/texlive-${DIST_V}-extra

# Note that running `make plist` in the texmf subdir re-generates
# this file and thus changes what gets installed!
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

	# The build installs `ptex` and `uptex` which conflict
	# with symlinks that get installed by other texmf packages.
	rm ${PREFIX}/bin/{u,}ptex

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

	# the `-mktexlsr` sub-package must stand alone without a texmf tree so
	# that other ports can use it outside of texlive. Unfortunately
	# `bin/mktexlsr` is a symlink to a shell script in the texmf tree.
	# Rather than add the texmf distfile here (which would slow down the
	# build a lot), I've hosted that one script, which we install now.
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf-dist/scripts/texlive
	${INSTALL_SCRIPT} ${WRKDIR}/mktexlsr-${V} \
		${PREFIX}/share/texmf-dist/scripts/texlive/mktexlsr


.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "ports-gcc"
CXXFLAGS +=	-std=gnu++11
.endif
