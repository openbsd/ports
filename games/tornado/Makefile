COMMENT=	Ouranos (Weather War) clone; multiplayer
DISTNAME=	tornado-1.4
CATEGORIES=	games
SITES=		${HOMEPAGE}download/
REVISION=	3

HOMEPAGE=	http://kiza.kcore.de/software/tornado/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv intl curses

NO_TEST=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tornado
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tornado
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tornado
	${INSTALL_DATA} ${WRKSRC}/tornado.scores \
		${PREFIX}/share/examples/tornado

.include <bsd.port.mk>
