# $OpenBSD: Makefile,v 1.10 2015/01/22 22:31:04 naddy Exp $

COMMENT=	Ouranos (Weather War) clone; multiplayer
DISTNAME=	tornado-1.4
CATEGORIES=	games
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/tornado/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses

NO_TEST=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tornado
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tornado
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tornado
	${INSTALL_DATA} ${WRKSRC}/tornado.scores \
		${PREFIX}/share/examples/tornado

.include <bsd.port.mk>
