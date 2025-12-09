COMMENT =	KDE Plasma PulseAudio support
DISTNAME =	plasma-pa-${VERSION}

SHARED_LIBS +=	plasma-volume             0.0 # 0.0

MODKDE_TRANSLATIONS =	Yes
MODKDE_DOCS = Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6DBusAddons KF6GlobalAccel KF6I18n KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6PulseAudioQt KF6StatusNotifierItem
WANTLIB += Plasma Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Widgets canberra gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += m pulse pulse-mainloop-glib

BUILD_DEPENDS =	devel/kf6/kitemmodels \
		devel/kf6/kdeclarative \
		devel/kf6/ksvg \
		graphics/kirigami-addons \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/gtk-vnc

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kdeclarative \
		devel/kf6/kitemmodels \
		graphics/kirigami-addons

LIB_DEPENDS =	audio/libcanberra \
		audio/pulseaudio \
		audio/pulseaudio-qt \
		devel/gettext,-runtime \
		devel/glib2 \
		devel/kf6/kcmutils \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons  \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kstatusnotifieritem \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/qt6/qtdeclarative \

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
