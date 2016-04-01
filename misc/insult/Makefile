# $OpenBSD: Makefile,v 1.1.1.1 2016/04/01 08:27:13 jung Exp $

COMMENT =		write insults to standard error on command failure

DISTNAME =		insult-0.3

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
