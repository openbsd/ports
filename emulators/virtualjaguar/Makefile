# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:10 sthen Exp $

COMMENT =	Atari Jaguar emulator

V =		2.1.3
DISTNAME =	virtualjaguar-${V}
EXTRACT_SUFX =	.tar.bz2
REVISION =	0

CATEGORIES =	emulators games

HOMEPAGE =	https://icculus.org/virtualjaguar/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
WANTLIB +=	SDL c cdio iconv m z

MASTER_SITES=	https://icculus.org/virtualjaguar/tarballs/

MODULES =	x11/qt5

LIB_DEPENDS =	audio/libcdio \
		devel/sdl

WRKDIST =	${WRKDIR}/linux-${V}

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" \
		CXX="${CXX}" \
		HOSTCC="${CC}" \
		LD="${CC}" \
		LINK="${CXX}" \
		V=1

MAKE_ENV =	CXXFLAGS="${CXXFLAGS}"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/virtualjaguar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/docs/virtualjaguar.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/virtualjaguar
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/virtualjaguar

.include <bsd.port.mk>
