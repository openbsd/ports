# $OpenBSD: Makefile,v 1.4 1999/09/28 17:17:10 brad Exp $

DISTNAME=       xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/ \
		ftp://ftp.kddlabs.co.jp/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=      yes

pre-install:
	@(cd ${WRKSRC}; ${MAKE} install.patterns)

.include <bsd.port.mk>
