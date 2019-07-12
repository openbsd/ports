# $OpenBSD: Makefile,v 1.4 2019/07/12 21:05:06 sthen Exp $

COMMENT=	utility to dim the screen and keyboard backlight when idle

VERSION =	1.4
GH_ACCOUNT =	jcs
GH_PROJECT =	xdimmer
GH_TAGNAME =	v${VERSION}
REVISION =	0

CATEGORIES=	x11

MAINTAINER=	joshua stein <jcs@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xext Xrandr c m

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
