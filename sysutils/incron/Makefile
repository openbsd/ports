# $OpenBSD: Makefile,v 1.1.1.1 2016/01/23 16:06:05 landry Exp $

COMMENT =	cron-like daemon but reacting to filesystem events
DISTNAME =	incron-0.5.10
CATEGORIES =	sysutils
HOMEPAGE =	http://inotify.aiken.cz/
MASTER_SITES =	http://inotify.aiken.cz/download/incron/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =	Yes
MAKE_FLAGS =	CXXFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
		LDFLAGS="-L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath ${LOCALBASE}/lib/inotify"

LIB_DEPENDS =	devel/libinotify
BUILD_DEPENDS =	devel/argp-standalone
WANTLIB +=	lib/inotify/inotify c m pthread stdc++
NO_TEST =	Yes

.include <bsd.port.mk>
