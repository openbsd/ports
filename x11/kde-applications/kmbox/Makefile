# $OpenBSD: Makefile,v 1.1.1.1 2018/08/18 18:19:42 rsadowski Exp $

COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

KDE5 =		Yes

SHARED_LIBS +=  KF5Mbox                   0.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Mime Qt5Core m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools

LIB_DEPENDS =	x11/kde-applications/kmime

.include <bsd.port.mk>
