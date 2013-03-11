# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:55 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20070505
REVISION=	5
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	net/pidgin,-libpurple>=2.0.0

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/icb-plugin.txt

.include <bsd.port.mk>
