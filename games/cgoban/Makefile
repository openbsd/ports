# $OpenBSD: Makefile,v 1.7 2000/06/29 23:33:58 fgsch Exp $

DISTNAME=	cgoban-1.9.10
CATEGORIES=	games x11
NEED_VERSION=	1.309
MASTER_SITES=	http://www.inetarena.com/~wms/comp/cgoban/

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
