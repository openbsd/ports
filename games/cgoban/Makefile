# $OpenBSD: Makefile,v 1.4 2000/04/06 14:28:54 kevlo Exp $

DISTNAME=	cgoban-1.9.10
CATEGORIES=	games

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.inetarena.com/~wms/comp/cgoban/

FAKE=		Yes
GNU_CONFIGURE=	Yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
