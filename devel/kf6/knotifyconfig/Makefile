UNLINKED = kf6
COMMENT =	KDE configuration dialog for desktop notifications
DISTNAME =	knotifyconfig-${VERSION}

SHARED_LIBS +=  KF6NotifyConfig           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Completion KF6ConfigCore KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets canberra m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/knotifications>=${MODKF6_VERSION} \
		devel/kf6/kxmlgui>=${MODKF6_VERSION} \
		multimedia/phonon \
		x11/qt6/qtspeech

RUN_DEPENDS =	multimedia/phonon \
		x11/qt6/qtspeech

LIB_DEPENDS =	audio/libcanberra \
		devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION} \
		devel/kf6/kjobwidgets>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION} \
		devel/kf6/solid>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION}

.include <bsd.port.mk>
