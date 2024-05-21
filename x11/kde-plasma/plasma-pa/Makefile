COMMENT =	KDE Plasma PulseAudio support
DISTNAME =	plasma-pa-${VERSION}
REVISION =	0

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_DOCS = Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6GlobalAccel KF6I18n KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6StatusNotifierItem Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets canberra
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl m pulse pulse-mainloop-glib

BUILD_DEPENDS =	devel/kf6/kitemmodels \
		devel/kf6/kdeclarative \
		devel/kf6/ksvg \
		graphics/kirigami-addons>=1.0.0 \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/gtk-vnc

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kdeclarative \
		devel/kf6/kitemmodels \
		graphics/kirigami-addons>=1.0.0

LIB_DEPENDS =	audio/libcanberra \
		audio/pulseaudio \
		devel/gettext \
		devel/glib2 \
		devel/kf6/kcmutils \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kstatusnotifieritem \
		x11/qt6/qtdeclarative \

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
