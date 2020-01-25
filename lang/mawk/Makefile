# $OpenBSD: Makefile,v 1.39 2020/01/25 19:31:34 jca Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.4-20200120
PKGNAME=	mawk-1.3.4.20200120

CATEGORIES=	lang

HOMEPAGE=	http://invisible-island.net/mawk/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

MASTER_SITES=	http://invisible-mirror.net/archives/mawk/ \
		ftp://ftp.invisible-island.net/mawk/
EXTRACT_SUFX=	.tgz

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
