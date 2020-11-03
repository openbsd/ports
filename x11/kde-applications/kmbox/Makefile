# $OpenBSD: Makefile,v 1.7 2020/11/03 16:12:37 rsadowski Exp $

COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5Mbox                   2.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Mime Qt5Core m

LIB_DEPENDS =	x11/kde-applications/kmime

.include <bsd.port.mk>
