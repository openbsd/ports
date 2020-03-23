# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:14 rsadowski Exp $

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${VERSION}
CATEGORIES =	education math

SHARED_LIBS +=  cantorlibs                52.0 # 17.08

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui KF5Archive
WANTLIB += KF5Attica KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Parts KF5Pty KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5SyntaxHighlighting KF5TextEditor
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns c cln luajit-5.1 m
WANTLIB += poppler poppler-qt5 qalculate ${MODPY_WANTLIB}
WANTLIB += lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack
WANTLIB += luajit-${MODLUA_DEFAULT_VERSION} spectre

MODULES +=	fortran \
		lang/lua \
		lang/python \
		x11/kde-applications

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODFORTRAN_COMPILER =	gfortran

COMPILER =	base-clang ports-clang ports-gcc

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kiconthemes \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kxmlgui \
		devel/kf5/syntax-highlighting \
		lang/luajit \
		math/R \
		math/libqalculate \
		print/libspectre \
		print/poppler,-qt5 \
		textproc/discount \
		x11/kde-applications/analitza \
		x11/qt5/qtsvg \
		x11/qt5/qtxmlpatterns

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
