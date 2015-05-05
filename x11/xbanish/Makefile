# $OpenBSD: Makefile,v 1.4 2015/05/05 17:00:21 sthen Exp $

COMMENT=	utility to automatically hide X11 cursor when typing

V=		1.3
DISTNAME=	v${V}
DIST_SUBDIR=	xbanish
PKGNAME=	xbanish-${V}
REVISION=	0

CATEGORIES=	x11
HOMEPAGE=	https://github.com/jcs/xbanish

MAINTAINER=	joshua stein <jcs@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/archive/

# BSD
PERMIT_PACKAGE_CDROM= Yes

WANTLIB+= X11 Xfixes Xi c

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
