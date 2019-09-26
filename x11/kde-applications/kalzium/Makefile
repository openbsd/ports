# $OpenBSD: Makefile,v 1.7 2019/09/26 09:46:10 chrisz Exp $

COMMENT =	periodic table of elements
DISTNAME =	kalzium-${VERSION}
CATEGORIES =	education math
REVISION =	3

HOMEPAGE =	https://edu.kde.org/kalzium/


SHARED_LIBS +=  science                   0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JS KF5JobWidgets KF5KDELibs4Support KF5KHtml KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Notifications KF5Parts
WANTLIB += KF5Plotting KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Script Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c m openbabel

MODPY_RUNDEP=	No
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		lang/python \
		lang/ocaml

BUILD_DEPENDS +=devel/kf5/karchive \
		math/eigen3

RUN_DEPENDS +=	devel/kf5/karchive

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdelibs4support \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/kparts \
		devel/kf5/kplotting \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/solid \
		devel/kf5/sonnet \
		misc/openbabel \
		x11/qt5/qtscript \
		x11/qt5/qtsvg

.include <bsd.port.mk>
