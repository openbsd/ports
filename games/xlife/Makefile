# $OpenBSD: Makefile,v 1.10 2000/10/22 15:42:08 espie Exp $

DISTNAME=	xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/X11/R5contrib/ \
		ftp://ftp.kddlabs.co.jp/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE=	imake

pre-install:
	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
