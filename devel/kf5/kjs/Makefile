# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:53 rsadowski Exp $

COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}

SHARED_LIBS =		KF5JS		4.3
SHARED_LIBS +=		KF5JSApi	4.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core c m pcre pcreposix

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/pcre

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
