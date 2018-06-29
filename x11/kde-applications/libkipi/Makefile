# $OpenBSD: Makefile,v 1.3 2018/06/29 22:16:26 espie Exp $

COMMENT =	interface to use kipi-plugins from a KDE application
DISTNAME =	libkipi-${VERSION}
CATEGORIES =	devel graphics
REVISION =	0

KDE5 = 		Yes

SHARED_LIBS +=  KF5Kipi                   0.0 # 5.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Service
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

RUN_DEPENDS =	x11/gtk+3,-guic

# XXX "KF5KExiv2", but CMake did not find one
LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kxmlgui \
			devel/kf5/kservice

BUILD_DEPENDS =		graphics/png \
			graphics/jpeg \
			graphics/tiff

.include <bsd.port.mk>
