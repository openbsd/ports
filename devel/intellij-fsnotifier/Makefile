COMMENT =		replacement for IntelliJ's fsNotifier

REV =			10581a62678d0251796da3e5fde498e0194dc77b
DIST_TUPLE +=		gitlab	worthwhileit/bsd fsnotifier 20230112 .

PKGNAME =		intellij-${DISTNAME}

SHARED_LIBS +=		fsnotifier                0.0 # 0.0

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WRKDIST =		${WRKDIR}/${DISTNAME}-${REV}

WANTLIB +=		lib/inotify/inotify c pthread

LIB_DEPENDS =		devel/libinotify

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
