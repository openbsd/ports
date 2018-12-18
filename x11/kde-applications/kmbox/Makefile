# $OpenBSD: Makefile,v 1.2 2018/12/18 09:39:20 rsadowski Exp $

COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

KDE5 =		Yes

SHARED_LIBS +=  KF5Mbox                   0.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Mime Qt5Core m

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	x11/kde-applications/kmime

.include <bsd.port.mk>
