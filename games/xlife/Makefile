# $OpenBSD: Makefile,v 1.7 2000/03/19 03:50:19 espie Exp $

DISTNAME=       xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/ \
		ftp://ftp.kddlabs.co.jp/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=      Yes
FAKE=		Yes

pre-install:
	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
