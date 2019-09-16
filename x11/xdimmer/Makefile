# $OpenBSD: Makefile,v 1.5 2019/09/16 15:47:17 jcs Exp $

COMMENT=	utility to dim the screen and keyboard backlight when idle

VERSION =	1.6
GH_ACCOUNT =	jcs
GH_PROJECT =	xdimmer
GH_TAGNAME =	v${VERSION}

CATEGORIES=	x11

MAINTAINER=	joshua stein <jcs@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xext Xrandr c m

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
