# $OpenBSD: Makefile,v 1.3 2019/03/08 20:00:55 cwen Exp $

COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail
REVISION =	0

KDE5 =		Yes

SHARED_LIBS +=  KF5Mbox                   0.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Mime Qt5Core m

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	x11/kde-applications/kmime

.include <bsd.port.mk>
