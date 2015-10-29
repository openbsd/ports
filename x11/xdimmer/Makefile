# $OpenBSD: Makefile,v 1.1.1.1 2015/10/29 00:36:12 jcs Exp $

COMMENT=	utility to dim the screen backlight when idle

V=		1.1
DISTNAME=	v${V}
DIST_SUBDIR=	xdimmer
PKGNAME=	${DIST_SUBDIR}-${V}

CATEGORIES=	x11
HOMEPAGE=	https://github.com/jcs/xdimmer

MAINTAINER=	joshua stein <jcs@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/archive/

# BSD
PERMIT_PACKAGE_CDROM= Yes

WANTLIB+=	X11 Xext Xrandr c

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
