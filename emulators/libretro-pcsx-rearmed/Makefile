# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:09 sthen Exp $

COMMENT =	Sony PlayStation core for retroarch

V =		22
DISTNAME =	libretro-pcsx-rearmed-$V

GH_ACCOUNT =	notaz
GH_PROJECT =	pcsx_rearmed
GH_TAGNAME =	r$V

CATEGORIES =	emulators

# GPLv2+, LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread z

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		Makefile.libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/pcsx_rearmed_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
