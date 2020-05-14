# $OpenBSD: Makefile,v 1.6 2020/05/14 21:08:01 jcs Exp $

COMMENT=	utility to dim the screen and keyboard backlight when idle

VERSION =	1.6
GH_ACCOUNT =	jcs
GH_PROJECT =	xdimmer
GH_TAGNAME =	v${VERSION}
REVISION = 	0

CATEGORIES=	x11

MAINTAINER=	joshua stein <jcs@jcs.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xext Xrandr c m

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
