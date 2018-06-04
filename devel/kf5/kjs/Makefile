# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}

SHARED_LIBS =		KF5JS		4.1
SHARED_LIBS +=		KF5JSApi	4.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core c m pcre pcreposix

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/pcre

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
