# $OpenBSD: Makefile,v 1.8 2000/03/31 21:48:47 brad Exp $

DISTNAME=	xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/X11/R5contrib/ \
		ftp://ftp.kddlabs.co.jp/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

USE_IMAKE=	Yes

pre-install:
	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
