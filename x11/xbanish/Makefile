# $OpenBSD: Makefile,v 1.3 2014/08/21 21:03:10 jcs Exp $

COMMENT=	utility to automatically hide X11 cursor when typing

V=		1.3
DISTNAME=	v${V}
DIST_SUBDIR=	xbanish
PKGNAME=	xbanish-${V}

CATEGORIES=	x11
HOMEPAGE=	https://github.com/jcs/xbanish

MAINTAINER=	joshua stein <jcs@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/archive/

# BSD
PERMIT_PACKAGE_CDROM= Yes

WANTLIB=	X11 Xfixes c

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
