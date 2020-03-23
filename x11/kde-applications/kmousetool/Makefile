# $OpenBSD: Makefile,v 1.4 2020/03/23 18:01:23 rsadowski Exp $

COMMENT =	KDE mouse clicker for accessibility users
DISTNAME =	kmousetool-${VERSION}
CATEGORIES =	x11 inputmethods

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5Notifications
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets Qt5Xml SM X11 Xext Xtst c
WANTLIB += m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

CONFIGURE_ARGS =	-DPhonon4Qt5_INCLUDE_DIR="${LOCALBASE}/include/phonon4qt5/"
.include <bsd.port.mk>
