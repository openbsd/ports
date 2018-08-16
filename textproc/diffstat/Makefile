# $OpenBSD: Makefile,v 1.24 2018/08/16 11:07:57 jca Exp $

COMMENT=		accumulates and displays statistics from a diff file

DISTNAME=		diffstat-1.62

CATEGORIES=		textproc

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

HOMEPAGE=		http://invisible-island.net/diffstat/diffstat.html

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://invisible-mirror.net/archives/diffstat/ \
			ftp://ftp.invisible-island.net/diffstat/
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

MAKE_FILE=		makefile

.include <bsd.port.mk>
