# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:09 sthen Exp $

ONLY_FOR_ARCHS =	${APM_ARCHS}

COMMENT =		dwm status bar statistics

DISTNAME =		dstat-0.6

CATEGORIES =		x11 sysutils

HOMEPAGE =		https://www.umaxx.net/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 c util

MASTER_SITES =		${HOMEPAGE}/dl/

RUN_DEPENDS =		x11/dwm

MAKE_FLAGS =		CC="${CC}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		DESTDIR=""

NO_TEST =		Yes

.include <bsd.port.mk>
