# $OpenBSD: Makefile,v 1.6 2020/09/07 14:49:21 rsadowski Exp $

COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5Mbox                   2.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Mime Qt5Core m

MODULES +=	x11/kde-applications

LIB_DEPENDS =	x11/kde-applications/kmime

.include <bsd.port.mk>
