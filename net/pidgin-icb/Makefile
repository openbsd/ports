COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20100207
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-icb/

# BSD
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}

BUILD_DEPENDS=	net/pidgin,-libpurple>=2.0.0

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/icb-plugin.txt

.include <bsd.port.mk>
