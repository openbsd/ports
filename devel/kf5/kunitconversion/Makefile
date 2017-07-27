# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =	KDE framework for converting physical units
DISTNAME =	kunitconversion-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5UnitConversion	2.0

WANTLIB =	KF5I18n ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n

.include <bsd.port.mk>
