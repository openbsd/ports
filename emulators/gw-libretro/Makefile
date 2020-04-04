# $OpenBSD: Makefile,v 1.3 2020/04/04 10:20:36 bentley Exp $

COMMENT =	Game & Watch core for retroarch

DISTNAME =	gw-libretro-1.6.3
REVISION =	0

# version numbers from README.md / git log
GH_ACCOUNT =	libretro
GH_PROJECT =	gw-libretro
GH_COMMIT =	ae06261766487cca2742a0f60d7dc4877c6f6fc7

CATEGORIES =	emulators

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += m

USE_GMAKE =	Yes

NO_TEST =	Yes

MAKE_FILE =	Makefile.libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/gw_libretro.so ${PREFIX}/lib/libretro

.include <bsd.port.mk>
