COMMENT =	KDE TeX/LaTeX bibliographies management application

VERSION =	0.10.0
DISTNAME =	kbibtex-${VERSION}
REVISION =	0

CATEGORIES =	print editors

HOMEPAGE =	https://apps.kde.org/kbibtex/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS +=  kbibtexconfig             0.0 # 0.0
SHARED_LIBS +=  kbibtexdata               0.0 # 0.0
SHARED_LIBS +=  kbibtexglobal             0.0 # 0.0
SHARED_LIBS +=  kbibtexgui                0.0 # 0.0
SHARED_LIBS +=  kbibtexio                 0.0 # 0.0
SHARED_LIBS +=  kbibtexnetworking         0.0 # 0.0
SHARED_LIBS +=  kbibtexprocessing         0.0 # 0.0

SITES =		${SITE_KDE:=stable/KBibTeX/${VERSION}/}
EXTRACT_SUFX =	.tar.xz

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Parts KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5SyntaxHighlighting KF5TextEditor KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5NetworkAuth
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns X11 c icui18n icuuc
WANTLIB += m poppler poppler-qt5

MODULES =	devel/kf5

BUILD_DEPENDS = devel/gettext,-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+4,-guic \
		x11/qt5/qtquickcontrols

RUN_DEPENDS +=	x11/kde-applications/okular

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		print/poppler \
		print/poppler,-qt5 \
		x11/qt5/qtdeclarative \
		x11/qt5/qtnetworkauth \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine \
		x11/qt5/qtxmlpatterns

.include <bsd.port.mk>
