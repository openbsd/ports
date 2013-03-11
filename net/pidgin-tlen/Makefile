# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:55 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Tlen.pl protocol plugin for Pidgin

DISTNAME=	pidgin-tlen-20101112
REVISION=		0
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-tlen/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

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
