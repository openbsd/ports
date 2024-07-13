COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
CATEGORIES =	archivers

V =		1.4
GH_ACCOUNT =	stachenov
GH_PROJECT =	quazip
GH_TAGNAME =	v$V
PKGNAME =	quazip-qt5-$V

SHARED_LIBS +=  quazip1-qt5               0.1 # 0.0
SHARED_LIBS +=  quazip1-qt6               0.0 # 0.0

HOMEPAGE =	https://stachenov.github.io/quazip/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

FLAVORS=	qt6
FLAVOR ?=

# LGPLv2.1 with static linking exception
PERMIT_PACKAGE =		Yes

MODULES =	devel/cmake

CONFIGURE_ARGS +=	-DQUAZIP_ENABLE_TESTS=ON

LIB_DEPENDS =	archivers/bzip2

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	quazip-qt6-${V}
PKGNAME =	quazip-qt6-$V
WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Core5Compat bz2 m z
MODULES +=	x11/qt6
LIB_DEPENDS +=	x11/qt6/qt5compat
CONFIGURE_ARGS +=	-DQUAZIP_QT_MAJOR_VERSION=6
.else
REVISION =	0
WANTLIB += ${COMPILER_LIBCXX} Qt5Core bz2 m z
MODULES +=	x11/qt5
CONFIGURE_ARGS +=	-DQUAZIP_QT_MAJOR_VERSION=5
.endif

.include <bsd.port.mk>
