# $OpenBSD: Makefile,v 1.3 2004/12/07 00:23:20 alek Exp $

COMMENT=		"accumulates and displays statistics from a diff file"

DISTNAME=		diffstat-1.34
CATEGORIES=		textproc
MASTER_SITES=		ftp://invisible-island.net/diffstat/
EXTRACT_SUFX=		.tgz

MAINTAINER=		Jon Olsson <jon@abc.se>
HOMEPAGE=		http://dickey.his.com/diffstat/diffstat.html

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

NO_REGRESS=		Yes	# 'testing' directory not present

CONFIGURE_STYLE=	gnu

MAKE_FILE=		makefile

.include <bsd.port.mk>
