# $OpenBSD: Makefile,v 1.4 2000/02/12 06:30:07 turan Exp $

DISTNAME=	xco
PKGNAME=	xco-1.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/bingle/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_IMAKE=	yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xco
		${INSTALL_DATA} ${FILESDIR}/copyright ${PREFIX}/share/doc/xco

.include <bsd.port.mk>
