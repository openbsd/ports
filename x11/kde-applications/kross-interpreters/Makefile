COMMENT =	Kross interpreter plugins for programming
DISTNAME =	kross-interpreters-${VERSION}
PKGNAME =	kross-interpreters-kf5-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} KF5KrossCore Qt5Core Qt5Gui Qt5Script
WANTLIB += Qt5Widgets Qt5Xml m

MODKDE_KF5 = yes

MODKDE5_TRANSLATIONS = yes

MODULES +=	lang/ruby

LIB_DEPENDS =	devel/kf5/kross \
		x11/qt5/qtscript

TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_PythonLibs=ON

.include <bsd.port.mk>
