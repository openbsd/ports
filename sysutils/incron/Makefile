# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:43 sthen Exp $

COMMENT =	cron-like daemon but reacting to filesystem events

DISTNAME =	incron-0.5.10
REVISION =	4

CATEGORIES =	sysutils

HOMEPAGE =	http://inotify.aiken.cz/

MASTER_SITES =	http://inotify.aiken.cz/download/incron/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	lib/inotify/inotify c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =	devel/argp-standalone
LIB_DEPENDS =	devel/libinotify

MAKE_FLAGS =	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
		CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath,${LOCALBASE}/lib/inotify"

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
