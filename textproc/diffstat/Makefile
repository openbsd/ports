# $OpenBSD: Makefile,v 1.21 2017/10/20 19:00:04 jca Exp $

COMMENT=		accumulates and displays statistics from a diff file

DISTNAME=		diffstat-1.61
CATEGORIES=		textproc
MASTER_SITES=		http://invisible-mirror.net/archives/diffstat/ \
			ftp://ftp.invisible-island.net/diffstat/
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://dickey.his.com/diffstat/diffstat.html

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

MAKE_FILE=		makefile

.include <bsd.port.mk>
