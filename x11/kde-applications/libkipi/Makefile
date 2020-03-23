# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:27 rsadowski Exp $

COMMENT =	interface to use kipi-plugins from a KDE application
DISTNAME =	libkipi-${VERSION}
CATEGORIES =	devel graphics

SHARED_LIBS +=  KF5Kipi                   1.0 # 5.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Service
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_ICON_CACHE = yes

MODULES +=	x11/kde-applications

# XXX "KF5KExiv2", but CMake did not find one
LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kxmlgui \
			devel/kf5/kservice

BUILD_DEPENDS =		graphics/png \
			graphics/jpeg \
			graphics/tiff

.include <bsd.port.mk>
