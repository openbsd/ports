# $OpenBSD: Makefile,v 1.5 2000/02/12 06:29:53 turan Exp $

DISTNAME=       xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/ \
		ftp://ftp.kddlabs.co.jp/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_IMAKE=      yes

pre-install:
	@(cd ${WRKSRC}; ${MAKE} install.patterns)

.include <bsd.port.mk>
