COMMENT =		Nintendo Entertainment System core for retroarch

V =			1.51.1
DISTNAME =		libretro-nestopia-$V

GH_ACCOUNT =		libretro
GH_PROJECT =		nestopia
GH_COMMIT =		a9e197f2583ef4f36e9e77d930a677e63a2c2f62

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		https://github.com/libretro/nestopia

MAINTAINER =		Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m pthread

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/autoconf-archive
LIB_DEPENDS =		${MODGCC4_CPPLIBDEP}

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CFLAGS} \
				-Ilibretro-common/include -Wno-narrowing"
FAKE_FLAGS =		PREFIX="${WRKINST}/${TRUEPREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/nestopia_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
