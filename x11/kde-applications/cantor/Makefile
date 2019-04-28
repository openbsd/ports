# $OpenBSD: Makefile,v 1.10 2019/04/28 21:08:27 naddy Exp $

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${VERSION}
CATEGORIES =	education math
REVISION =	2

SHARED_LIBS +=  cantorlibs                51.0 # 17.08


WANTLIB = ${COMPILER_LIBCXX} Analitza AnalitzaGui KF5Archive
WANTLIB += KF5Attica KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Parts KF5Pty KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextEditor KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml Qt5XmlPatterns c
# XXX should use MODPY_WANTLIB, but difficult with the mix of py2+py3
WANTLIB += cln m python2.7 python${MODPY_DEFAULT_VERSION_3}m qalculate spectre
WANTLIB += lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack
WANTLIB += luajit-${MODLUA_DEFAULT_VERSION} KF5SyntaxHighlighting

MODULES +=	fortran \
		lang/lua \
		lang/python \
		x11/kde-applications

MODFORTRAN_COMPILER =	gfortran

COMPILER =	base-clang ports-clang ports-gcc

MODPY_RUNDEP=	No

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes
# XXXX MOR# XXXX MOREE
LIB_DEPENDS+=	devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kiconthemes \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kxmlgui \
		lang/luajit \
		lang/python/${MODPY_DEFAULT_VERSION_2} \
		lang/python/${MODPY_DEFAULT_VERSION_3} \
		math/R \
		math/libqalculate \
		print/libspectre \
		x11/kde-applications/analitza \
		devel/kf5/syntax-highlighting \
		x11/qt5/qtxmlpatterns

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
