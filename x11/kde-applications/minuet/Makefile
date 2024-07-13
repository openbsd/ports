COMMENT =	KDE software for music education
DISTNAME =	minuet-${VERSION}
CATEGORIES =	audio education

HOMEPAGE =	https://minuet.kde.org/

SHARED_LIBS +=  minuetinterfaces          3.1 # 0.3

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6Crash KF6I18n
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Svg c fluidsynth m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	audio/fluidsynth \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
