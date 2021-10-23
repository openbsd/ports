# $OpenBSD: Makefile,v 1.8 2021/10/22 03:14:59 jcs Exp $

COMMENT=	utility to dim the screen and keyboard backlight when idle

VERSION =	1.7
GH_ACCOUNT =	jcs
GH_PROJECT =	xdimmer
GH_TAGNAME =	v${VERSION}

CATEGORIES=	x11

MAINTAINER=	joshua stein <jcs@jcs.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xext Xrandr c m

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
