# $OpenBSD: Makefile,v 1.3 1999/01/14 02:34:05 angelos Exp $
#

DISTNAME=       xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/	\
		ftp://ftp.iij.ad.jp/X/R5contrib/
MASTER_SITE_SUBDIR=	../../R5contrib
EXTRACT_SUFX=	.tar.Z

USE_IMAKE=      yes

pre-install:
	@(cd ${WRKSRC}; make install.patterns)

.include <bsd.port.mk>
