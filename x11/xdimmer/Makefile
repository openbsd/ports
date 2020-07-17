# $OpenBSD: Makefile,v 1.7 2020/07/17 08:36:05 tb Exp $

COMMENT=	utility to dim the screen and keyboard backlight when idle

VERSION =	1.6
GH_ACCOUNT =	jcs
GH_PROJECT =	xdimmer
GH_TAGNAME =	v${VERSION}
REVISION = 	1

CATEGORIES=	x11

MAINTAINER=	joshua stein <jcs@jcs.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xext Xrandr c m

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
