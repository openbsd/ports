# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}

SHARED_LIBS =		KF5JS		2.0
SHARED_LIBS +=		KF5JSApi	2.0

WANTLIB =		Qt5Core c m pcre pcreposix pthread

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/pcre

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
