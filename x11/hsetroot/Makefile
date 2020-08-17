# $OpenBSD: Makefile,v 1.1.1.1 2020/08/17 17:04:13 bcallah Exp $

COMMENT =	wallpaper changer, works with compositors
CATEGORIES =	x11

GH_ACCOUNT =	himdel
GH_PROJECT =	hsetroot
GH_TAGNAME =	1.0.5

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += Imlib2 X11 Xinerama c

LIB_DEPENDS =	graphics/imlib2

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}"

FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/hsetroot.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
