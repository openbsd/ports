# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:59 zhuk Exp $

COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}

SHARED_LIBS =		KF5JS		0.0
SHARED_LIBS +=		KF5JSApi	0.0

WANTLIB =		Qt5Core c m pcre pcreposix pthread

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/pcre

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
