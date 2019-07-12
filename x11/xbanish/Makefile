# $OpenBSD: Makefile,v 1.9 2019/07/12 21:05:06 sthen Exp $

COMMENT=	utility to automatically hide X11 cursor when typing

V=		1.6
DISTNAME=	v${V}
DIST_SUBDIR=	xbanish
PKGNAME=	${DIST_SUBDIR}-${V}

CATEGORIES=	x11
HOMEPAGE=	https://github.com/jcs/xbanish

MAINTAINER=	joshua stein <jcs@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/archive/

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	X11 Xfixes Xi c

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
