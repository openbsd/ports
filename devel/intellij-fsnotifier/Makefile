COMMENT =		replacement for IntelliJ's fsNotifier

DIST_TUPLE +=		gitlab	worthwhileit/bsd fsnotifier 20230112 .
DIST_SUBDIR =		rerolled

PKGNAME =		intellij-${DISTNAME}

SHARED_LIBS +=		fsnotifier                0.0 # 0.0

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		lib/inotify/inotify c pthread

LIB_DEPENDS =		devel/libinotify

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
