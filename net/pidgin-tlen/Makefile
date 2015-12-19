# $OpenBSD: Makefile,v 1.10 2015/12/19 20:47:03 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	Tlen.pl protocol plugin for Pidgin

DISTNAME=	pidgin-tlen-20101112
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-tlen/

MAINTAINER=	Aleksander Piotrowski <pelotasplus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/pidgin>=2.4.1

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/tlen-plugin.txt

.include <bsd.port.mk>
