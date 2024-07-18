ONLY_FOR_ARCHS =	i386 amd64 powerpc

COMMENT =		early macintosh emulator
V =			36.04
DISTNAME =		minivmac-${V}

CATEGORIES =		emulators

HOMEPAGE = 		https://gryphel.com/c/minivmac/

MAINTAINER =		Jag Talon <jag@aangat.lahat.computer>

WANTLIB =		X11 c

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =			https://www.gryphel.com/d/minivmac/minivmac-${V}/

EXTRACT_SUFX =		.src.tgz

COMPILER =		base-clang ports-gcc base-gcc
USE_GMAKE =		Yes

RUN_DEPENDS =		devel/desktop-file-utils

WRKDIST =		${WRKDIR}/minivmac

ALL_TARGET =		minivmac

SETUP_FLAGS-amd64 = 	-t ob64
SETUP_FLAGS-i386 = 	-t obsd
SETUP_FLAGS-powerpc = 	-t obsd -cpu ppc

do-gen:
	cd ${WRKSRC}; cc setup/tool.c -o setup_t && \
		./setup_t ${SETUP_FLAGS-${MACHINE_ARCH}} > gen && \
		sh ./gen

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/minivmac ${PREFIX}/bin/minivmac

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/minivmac.png \
		${PREFIX}/share/pixmaps/

	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${FILESDIR}/minivmac.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
