COMMENT=	John Horton Conway's Game of Life

DISTNAME=	xlife-6.7.6
CATEGORIES=	games

HOMEPAGE=	http://litwr2.atspace.eu/xlife.php

SITES=		http://litwr2.atspace.eu/xlife/
EXTRACT_SUFX=	.tar.bz2

PERMIT_PACKAGE=	Yes

WANTLIB += X11 c m

CONFIGURE_STYLE=	imake
WRKDIST=	${WRKDIR}/xlife-6.7

USE_GMAKE=	Yes

NO_TEST=	Yes

post-build:
	cd ${WRKSRC} && ${MAKE} CFLAGS="${CFLAGS}"

do-install:
.for f in gen-multirules table2r xlife
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
	cd ${PREFIX}/bin && ln -sf xlife lifeconv
	${INSTALL_DATA} ${WRKSRC}/xlife.man ${PREFIX}/man/man6/xlife.6
	cd ${PREFIX}/man/man6 && ln -sf xlife.6 lifeconv.6
	${INSTALL_DATA_DIR} ${PREFIX}/share/xlife
	cp -r ${WRKDIST}/patterns ${PREFIX}/share/xlife
#pre-install:
#	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
