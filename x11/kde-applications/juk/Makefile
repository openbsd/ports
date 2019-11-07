# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 09:59:49 rsadowski Exp $

COMMENT =	music collection manager and player for KDE
DISTNAME =	juk-${VERSION}
CATEGORIES =	audio

HOMEPAGE =	https://kde.org/applications/multimedia/org.kde.juk

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5GlobalAccel KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml c m phonon4qt5 tag

MODULES +=	x11/kde-applications \
		multimedia/phonon

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS +=devel/kf5/kinit

RUN_DEPENDS +=	devel/kf5/kinit \
		x11/kde-applications/kio-extras

LIB_DEPENDS +=	audio/taglib \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kitemviews \
		devel/kf5/kcrash \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtsvg

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
