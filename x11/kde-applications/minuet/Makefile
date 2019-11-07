# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 10:23:15 rsadowski Exp $

COMMENT =	KDE software for music education
DISTNAME =	minuet-${VERSION}
CATEGORIES =	audio education

HOMEPAGE =	https://minuet.kde.org/


SHARED_LIBS +=  minuetinterfaces          0.0 # 0.3

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5Crash KF5I18n Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5Widgets c fluidsynth m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS +=x11/qt5/qtquickcontrols
RUN_DEPENDS +=	x11/qt5/qtquickcontrols

LIB_DEPENDS +=	audio/fluidsynth \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtsvg

.include <bsd.port.mk>
