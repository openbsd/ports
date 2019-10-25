# $OpenBSD: Makefile,v 1.1.1.1 2019/10/25 10:15:05 edd Exp $

COMMENT =	simple screen ruler for x11
DISTNAME =	xscreenruler-20191025

GH_ACCOUNT =	6d7367
GH_PROJECT =	xscreenruler
GH_COMMIT =	3bde7607e9e06d8b038ae757ef8d7687443e7fca

CATEGORIES =	x11
HOMEPAGE =	https://github.com/6d7367/xscreenruler
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		X11 c

MAKE_FILE =		makefile
ALL_TARGET =		xscreenruler
MAKE_FLAGS =		CPPFLAGS=-I${X11BASE}/include \
			LDFLAGS=-L${X11BASE}/lib \
			CC="${CC}"
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xscreenruler ${PREFIX}/bin/

.include <bsd.port.mk>
