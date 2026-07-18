COMMENT =	KDE TeX/LaTeX bibliographies management application

VERSION =	0.10.50
DISTNAME =	kbibtex-${VERSION}

COMMIT =	c8d749d01e905a9a96a1b7ff20e7f270b912e2ec
DIST_TUPLE =	kde office kbibtex ${COMMIT} .

CATEGORIES =	print editors

HOMEPAGE =	https://apps.kde.org/kbibtex/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS +=  kbibtexconfig             1.0 # 0.0
SHARED_LIBS +=  kbibtexdata               1.0 # 0.0
SHARED_LIBS +=  kbibtexglobal             1.0 # 0.0
SHARED_LIBS +=  kbibtexgui                1.0 # 0.0
SHARED_LIBS +=  kbibtexio                 1.0 # 0.0
SHARED_LIBS +=  kbibtexnetworking         1.0 # 0.0
SHARED_LIBS +=  kbibtexprocessing         1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6IconThemes KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Parts KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6SyntaxHighlighting KF6TextEditor KF6TextWidgets
WANTLIB += KF6Wallet KF6WidgetsAddons KF6XmlGui Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6NetworkAuth Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6Quick Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += c icui18n icuuc m poppler poppler-qt6

MODULES =	devel/kf6

BUILD_DEPENDS = devel/gettext,-tools \
		devel/kf6/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+4,-guic

RUN_DEPENDS +=	x11/kde-applications/okular

WRKDIST =	${WRKDIR}/kbibtex-${COMMIT}

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		print/poppler \
		print/poppler,-qt6 \
		textproc/icu4c \
		x11/qt6/qtdeclarative \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

.include <bsd.port.mk>
