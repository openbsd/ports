# $OpenBSD: Makefile,v 1.5 2000/06/11 08:36:39 fgsch Exp $

DISTNAME=	cgoban-1.9.10
CATEGORIES=	games
NEED_VERSION=	1.301

MAINTAINER=	fgsch@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.inetarena.com/~wms/comp/cgoban/

CONFIGURE_STYLE=	gnu
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
