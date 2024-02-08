COMMENT =	Sony PlayStation core for retroarch

V =		23
DISTNAME =	libretro-pcsx-rearmed-$V
REVISION =	0

GH_ACCOUNT =	notaz
GH_PROJECT =	pcsx_rearmed
GH_TAGNAME =	r$V

CATEGORIES =	emulators

MAINTAINER =	Nam Nguyen <namn@openbsd.org>

# GPLv2+, LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += chdr m pthread z

LIB_DEPENDS =		emulators/libchdr

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		Makefile.libretro

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/pcsx_rearmed_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
