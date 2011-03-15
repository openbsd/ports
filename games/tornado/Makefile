# $OpenBSD: Makefile,v 1.8 2011/03/15 10:38:57 jasper Exp $

COMMENT=	Ouranos (Weather War) clone; multiplayer
DISTNAME=	tornado-1.4
CATEGORIES=	games
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/tornado/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c ncurses

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

MODULES=	devel/gettext

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tornado
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tornado
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tornado
	${INSTALL_DATA} ${WRKSRC}/tornado.scores \
		${PREFIX}/share/examples/tornado

.include <bsd.port.mk>
