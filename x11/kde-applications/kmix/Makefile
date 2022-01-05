# $OpenBSD: Makefile,v 1.15 2022/01/05 08:02:57 rsadowski Exp $

COMMENT =	sound channel mixer and volume control
DISTNAME =	kmix-${VERSION}
CATEGORIES =	audio

HOMEPAGE =	https://kde.org/applications/multimedia/org.kde.kmix

SHARED_LIBS +=  kmixcore                2.0 # 5.13.80

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5Notifications KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml X11 c canberra m pulse pulse-mainloop-glib

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kinit
RUN_DEPENDS =	devel/kf5/kinit

LIB_DEPENDS =	audio/pulseaudio \
		audio/libcanberra \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid

.include <bsd.port.mk>
