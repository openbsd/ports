# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:39 rsadowski Exp $

COMMENT =	KDE framework for converting physical units
DISTNAME =	kunitconversion-${VERSION}

SHARED_LIBS =	KF5UnitConversion	2.0

WANTLIB =	KF5I18n Qt5Core Qt5Network Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n

.include <bsd.port.mk>
