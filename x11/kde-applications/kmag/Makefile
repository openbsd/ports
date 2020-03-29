# $OpenBSD: Makefile,v 1.6 2020/03/29 16:44:09 rsadowski Exp $

COMMENT =	KDE screen magnifier
DISTNAME =	kmag-${VERSION}
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/utilities/kmag/

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m qaccessibilityclient-qt5

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes
MODKDE5_DESKTOP_FILE = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kxmlgui \
		x11/libqaccessibilityclient

.include <bsd.port.mk>
