COMMENT =	IRC client for KDE

DISTNAME =	konversation-${MODKDE_VERSION}
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://konversation.kde.org/

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6Bookmarks
WANTLIB += KF6BookmarksWidgets KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GlobalAccel KF6I18n KF6IdleTime
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6Notifications KF6NotifyConfig KF6Parts KF6Service
WANTLIB += KF6Solid KF6SonnetUi KF6StatusNotifierItem KF6TextWidgets
WANTLIB += KF6Wallet KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Widgets Qt6Xml X11 c m qca-qt6

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

MODULES =	x11/kde-applications \
		devel/kf6 \
		lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools \
		devel/kf6/kitemmodels \
		multimedia/phonon,qt6 \

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/karchive  \
		devel/kf6/attica \
		devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n  \
		devel/kf6/kidletime \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		security/qca-qt6 \
		x11/qt6/qt5compat \
		x11/qt6/qtmultimedia

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/konversation/scripting_support/python/konversation

.include <bsd.port.mk>
