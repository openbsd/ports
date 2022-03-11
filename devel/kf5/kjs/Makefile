COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}

SHARED_LIBS =		KF5JS		6.0
SHARED_LIBS +=		KF5JSApi	5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core c m pcre pcreposix

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =		devel/kf5/kdoctools>=${MODKF5_VERSION}

LIB_DEPENDS =		devel/pcre

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
