# $OpenBSD: Makefile,v 1.14 2011/03/20 20:25:23 simon Exp $

COMMENT=		accumulates and displays statistics from a diff file

DISTNAME=		diffstat-1.54
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
USE_GROFF =		Yes

MAKE_FILE=		makefile

.include <bsd.port.mk>
