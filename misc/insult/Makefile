# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:51 sthen Exp $

COMMENT =		write insults to standard error on command failure

DISTNAME =		insult-0.4

CATEGORIES =		misc games

HOMEPAGE =		https://www.umaxx.net/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/dl/

MAKE_FLAGS =		CC="${CC}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		DESTDIR=""

NO_TEST =		Yes

.include <bsd.port.mk>
