COMMENT =	simple video player for KDE
DISTNAME =	dragon-${VERSION}
CATEGORIES =	multimedia
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6Crash KF6I18n
WANTLIB += KF6I18nQml KF6KIOCore KF6Service KF6WindowSystem Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Widgets X11 avcodec c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info \
		devel/kf6/kirigami

BUILD_DEPENDS =	devel/kf6/kirigami

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kservice \
		devel/kf6/kwindowsystem \
		graphics/ffmpeg \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
