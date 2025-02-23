COMMENT=	twin panel file manager for KDE

VERSION=	2.9.0
DISTNAME=	krusader-${VERSION}

CATEGORIES=	x11

HOMEPAGE=	https://www.krusader.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GlobalAccel KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Parts KF6Service
WANTLIB += KF6Solid KF6SonnetUi KF6StatusNotifierItem KF6TextWidgets
WANTLIB += KF6Wallet KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += Qt6Concurrent Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6PrintSupport Qt6Widgets Qt6Xml X11 c
WANTLIB += m z

SITES =		${SITE_KDE:=stable/krusader/${VERSION}/}
EXTRACT_SUFX=	.tar.xz

MODULES =	devel/kf6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic \
		x11/kde-applications/kompare

BUILD_DEPENDS =	devel/kf6/kdoctools \
		devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kglobalaccel  \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		x11/qt6/qt5compat

NO_TEST =	Yes

.include <bsd.port.mk>
