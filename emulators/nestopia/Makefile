# $OpenBSD: Makefile,v 1.20 2019/10/17 13:32:31 cwen Exp $

COMMENT-main =		accurate Nintendo Entertainment System emulator
COMMENT-libretro =	Nintendo Entertainment System core for retroarch

V =			1.49
DISTNAME =		nestopia-$V
PKGNAME-main =		nestopia-$V
PKGNAME-libretro =	libretro-nestopia-$V

MULTI_PACKAGES =	-main -libretro

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		http://0ldsk00l.ca/nestopia/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB-main += ${COMPILER_LIBCXX} SDL2 ao archive atk-1.0 c cairo
WANTLIB-main += cairo-gobject epoxy gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0 z
WANTLIB-libretro =	${COMPILER_LIBCXX} m pthread

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nestopiaue/}
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		devel/autoconf-archive
RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS-main =	archivers/libarchive \
			audio/libao \
			devel/sdl2 \
			x11/gtk+3
LIB_DEPENDS-libretro =	${MODGCC4_CPPLIBDEP}

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS} `sdl2-config --cflags` \
				`pkg-config --cflags gtk+-3.0`" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` \
				`pkg-config --cflags gtk+-3.0` \
				-Ilibretro-common/include -Wno-narrowing"
FAKE_FLAGS =		PREFIX="${WRKINST}/${TRUEPREFIX}"

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--enable-gui \
			--with-ao

USE_GMAKE =		Yes

NO_TEST =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-build:
	cd ${WRKSRC}/libretro && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/libretro/nestopia_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
