# $OpenBSD: Makefile,v 1.8 2000/10/16 13:30:31 fgsch Exp $

DISTNAME=	cgoban-1.9.10
CATEGORIES=	games x11
NEED_VERSION=	1.309
MASTER_SITES=	http://www.inetarena.com/~wms/comp/cgoban/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

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
