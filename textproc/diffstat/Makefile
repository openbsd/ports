# $OpenBSD: Makefile,v 1.22 2017/10/20 19:01:26 jca Exp $

COMMENT=		accumulates and displays statistics from a diff file

DISTNAME=		diffstat-1.61
REVISION=		0
CATEGORIES=		textproc
MASTER_SITES=		http://invisible-mirror.net/archives/diffstat/ \
			ftp://ftp.invisible-island.net/diffstat/
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://invisible-island.net/diffstat/diffstat.html

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

MAKE_FILE=		makefile

.include <bsd.port.mk>
