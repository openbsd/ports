# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:59 marc Exp $
#

DISTNAME=       xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games

#BROKEN=	"sources no longer found on master sites"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/	\
		ftp://ftp.iij.ad.jp/X/R5contrib/
MASTER_SITE_SUBDIR=	../../R5contrib
EXTRACT_SUFX=	.tar.Z

USE_IMAKE=      yes

pre-install:
	@(cd ${WRKSRC}; make install.patterns)

.include <bsd.port.mk>
