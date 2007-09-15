# $OpenBSD: Makefile,v 1.9 2007/09/15 20:59:37 merdely Exp $

COMMENT=		accumulates and displays statistics from a diff file

DISTNAME=		diffstat-1.43
PKGNAME=		${DISTNAME}p1
CATEGORIES=		textproc
MASTER_SITES=		ftp://invisible-island.net/diffstat/
EXTRACT_SUFX=		.tgz

MAINTAINER=		Simon Bertrang <simon@openbsd.org>
HOMEPAGE=		http://dickey.his.com/diffstat/diffstat.html

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

MAKE_FILE=		makefile

.include <bsd.port.mk>
