# $OpenBSD: Makefile,v 1.2 2017/10/05 21:40:10 jcs Exp $

COMMENT=	utility to dim the screen and keyboard backlight when idle

VERSION =	1.4
GH_ACCOUNT =	jcs
GH_PROJECT =	xdimmer
GH_TAGNAME =	v${VERSION}

CATEGORIES=	x11

MAINTAINER=	joshua stein <jcs@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM= Yes

WANTLIB+=	X11 Xext Xrandr c m

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
