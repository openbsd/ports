# $OpenBSD: Makefile,v 1.3 1999/12/24 21:11:40 fgsch Exp $

DISTNAME=	xco
PKGNAME=	xco-1.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/bingle/

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xco
		${INSTALL_DATA} ${FILESDIR}/copyright ${PREFIX}/share/doc/xco

.include <bsd.port.mk>
