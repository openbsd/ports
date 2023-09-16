COMMENT =	KDE Plasma PulseAudio support
DISTNAME =	plasma-pa-${VERSION}

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_DOCS = Yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5Declarative KF5GlobalAccel KF5I18n KF5Notifications
WANTLIB += KF5Package KF5QuickAddons Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets Qt5Xml canberra
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 m pulse pulse-mainloop-glib

BUILD_DEPENDS =	x11/qt5/qtquickcontrols2 \
		x11/gtk-vnc

RUN_DEPENDS =	x11/qt5/qtquickcontrols2 \
		devel/desktop-file-utils

LIB_DEPENDS =	audio/libcanberra \
		audio/pulseaudio \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/knotifications \
		devel/kf5/kpackage \
		x11/qt5/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
