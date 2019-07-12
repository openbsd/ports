# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:43 sthen Exp $

COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20070505
REVISION=	7
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-icb/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	net/pidgin,-libpurple>=2.0.0

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/icb-plugin.txt

.include <bsd.port.mk>
