# $OpenBSD: Makefile,v 1.3 2017/03/04 16:15:57 jca Exp $

COMMENT =	Atari Jaguar emulator

DISTNAME =	virtualjaguar-2.1.2
REVISION =	0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	emulators games

HOMEPAGE =	https://icculus.org/virtualjaguar/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	GL ICE QtGui QtOpenGL SDL SM X11 Xext Xi Xinerama Xrender
WANTLIB +=	c fontconfig freetype m pthread stdc++ z

MASTER_SITES=	https://icculus.org/virtualjaguar/tarballs/

MODULES =	x11/qt4

LIB_DEPENDS =	devel/sdl

WRKDIST =	${WRKDIR}/virtualjaguar

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" \
		CXX="${CXX}" \
		HOSTCC="${CC}" \
		LD="${CC}" \
		LINK="${CXX}"

NO_TEST =	Yes

pre-configure:
	@ln -s ${LOCALBASE}/bin/qmake4 ${WRKDIR}/bin/qmake

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/virtualjaguar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/docs/virtualjaguar.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/virtualjaguar
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/virtualjaguar

.include <bsd.port.mk>
