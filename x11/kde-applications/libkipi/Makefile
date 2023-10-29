COMMENT =	interface to use kipi-plugins from a KDE application
DISTNAME =	libkipi-${VERSION}
CATEGORIES =	devel graphics

SHARED_LIBS +=  KF5Kipi                   2.0 # 5.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Service
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_ICON_CACHE = yes

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui

BUILD_DEPENDS =		graphics/png \
			graphics/jpeg \
			graphics/tiff \
			x11/kde-applications/libkexiv2

.include <bsd.port.mk>
