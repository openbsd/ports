COMMENT =		Nintendo Entertainment System core for retroarch

V =			1.53.2
DISTNAME =		libretro-nestopia-$V

GH_ACCOUNT =		libretro
GH_PROJECT =		nestopia
GH_COMMIT =		d33852f5efe89c87a06f8ce7d12b8b5451e9ae71

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

DEBUG_PACKAGES =	${BUILD_PACKAGES}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/nestopia_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
