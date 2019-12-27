# $OpenBSD: Makefile,v 1.27 2019/12/27 22:35:41 jca Exp $

COMMENT=		accumulates and displays statistics from a diff file

DISTNAME=		diffstat-1.63
REVISION=		0

CATEGORIES=		textproc

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

HOMEPAGE=		https://invisible-island.net/diffstat/diffstat.html

# ISC-like
PERMIT_PACKAGE=		Yes

WANTLIB=		c

MASTER_SITES=		https://invisible-mirror.net/archives/diffstat/ \
			ftp://ftp.invisible-island.net/diffstat/
EXTRACT_SUFX=		.tgz

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

MAKE_FILE=		makefile

.include <bsd.port.mk>
