# $OpenBSD: Makefile,v 1.2 2016/10/18 18:08:41 jung Exp $

COMMENT =		write insults to standard error on command failure

DISTNAME =		insult-0.4

CATEGORIES =		misc games

HOMEPAGE =		https://www.umaxx.net/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/dl/

MAKE_FLAGS =		CC="${CC}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		DESTDIR=""

NO_TEST =		Yes

.include <bsd.port.mk>
