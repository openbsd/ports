# $OpenBSD: Makefile,v 1.40 2020/03/11 22:27:58 naddy Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.4-20200120
PKGNAME=	mawk-1.3.4.20200120
REVISION=	0

CATEGORIES=	lang

HOMEPAGE=	https://invisible-island.net/mawk/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

MASTER_SITES=	https://invisible-mirror.net/archives/mawk/ \
		ftp://ftp.invisible-island.net/mawk/
EXTRACT_SUFX=	.tgz

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
