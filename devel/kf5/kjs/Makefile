# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:44 cwen Exp $

COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5JS		4.2
SHARED_LIBS +=		KF5JSApi	4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core c m pcre pcreposix

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/pcre

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
