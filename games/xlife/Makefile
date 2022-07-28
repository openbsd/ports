COMMENT=	John Horton Conway's Game of Life

DISTNAME=	xlife-6.7.6
CATEGORIES=	games

HOMEPAGE=	http://litwr2.atspace.eu/xlife.php

MASTER_SITES=	http://litwr2.atspace.eu/xlife/
EXTRACT_SUFX=	.tar.bz2

PERMIT_PACKAGE=	Yes

WANTLIB += X11 c m

CONFIGURE_STYLE=	imake
WRKDIST=	${WRKDIR}/xlife-6.7

USE_GMAKE=	Yes

MAKE_FLAGS=XLIFEPATSDIR=${PREFIX}/share/xlife \
	   BINDIR=${PREFIX}/bin \
	   MANDIR=${PREFIX}/man/man6
FAKE_FLAGS=XLIFEPATSDIR=${TRUEPREFIX}/share/xlife

NO_TEST=	Yes

post-build:
	cd ${WRKSRC} && ${MAKE} CFLAGS="${CFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xlife
	cp -r ${WRKDIST}/patterns ${PREFIX}/share/xlife
#pre-install:
#	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
