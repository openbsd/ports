# $OpenBSD: Makefile,v 1.6 2017/02/27 19:18:19 jca Exp $

COMMENT =	cron-like daemon but reacting to filesystem events

DISTNAME =	incron-0.5.10
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	http://inotify.aiken.cz/

MASTER_SITES =	http://inotify.aiken.cz/download/incron/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	lib/inotify/inotify c m pthread stdc++

BUILD_DEPENDS =	devel/argp-standalone
LIB_DEPENDS =	devel/libinotify

MAKE_FLAGS =	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
		CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath,${LOCALBASE}/lib/inotify"

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
