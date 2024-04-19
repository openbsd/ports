UNLINKED =	kf6
COMMENT =	collection of plugins to handle mobipocket files

DISTNAME =	kdegraphics-mobipocket-${VERSION}
PKGNAME =	kf6-kdegraphics-mobipocket-${VERSION}

CATEGORIES =	devel

SHARED_LIBS +=	QMobipocket6              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += m

LIB_DEPENDS = x11/qt6/qt5compat

NO_TEST =	Yes

.include <bsd.port.mk>
