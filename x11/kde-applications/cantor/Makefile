# $OpenBSD: Makefile,v 1.1.1.1 2018/06/26 05:34:23 rsadowski Exp $

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${VERSION}
CATEGORIES =	education math

SHARED_LIBS +=  cantorlibs                51.0 # 17.08

KDE5 =		Yes

WANTLIB = ${COMPILER_LIBCXX} Analitza AnalitzaGui KF5Archive
WANTLIB += KF5Attica KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Parts KF5Pty KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextEditor KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml Qt5XmlPatterns c
WANTLIB += cln m python2.7 python3.6m qalculate spectre
WANTLIB += lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack
WANTLIB += luajit-${MODLUA_DEFAULT_VERSION}

MODULES =	lang/lua \
		lang/python \
		fortran

MODFORTRAN_COMPILER =	gfortran

COMPILER =	base-clang ports-clang ports-gcc

MODPY_RUNDEP=	No

BUILD_DEPENDS+=	devel/kf5/kdoctools \
		devel/kf5/kguiaddons \
		devel/kf5/kitemmodels \
		devel/kf5/kwindowsystem \
		devel/kf5/threadweaver \
		devel/gettext-tools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kguiaddons \
		devel/kf5/kitemmodels \
		devel/kf5/kwindowsystem \
		devel/kf5/threadweaver \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS+=	lang/python/${MODPY_DEFAULT_VERSION_2} \
		lang/python/${MODPY_DEFAULT_VERSION_3} \
		x11/kde-applications/analitza \
		x11/qt5/qtxmlpatterns \
		devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kiconthemes \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kxmlgui \
		devel/kf5/kpty \
		lang/luajit \
		math/libqalculate \
		print/libspectre \
		math/R

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
