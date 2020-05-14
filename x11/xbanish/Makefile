# $OpenBSD: Makefile,v 1.11 2020/05/14 20:59:34 jcs Exp $

COMMENT=	utility to automatically hide X11 cursor when typing

V=		1.7
DISTNAME=	v${V}
DIST_SUBDIR=	xbanish
PKGNAME=	${DIST_SUBDIR}-${V}

CATEGORIES=	x11
HOMEPAGE=	https://github.com/jcs/xbanish

MAINTAINER=	joshua stein <jcs@jcs.org>

MASTER_SITES=	${HOMEPAGE}/archive/

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	X11 Xfixes Xi c

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
