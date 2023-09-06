COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
CATEGORIES =	archivers

GH_ACCOUNT =	stachenov
GH_PROJECT =	quazip
V =		1.4
GH_TAGNAME =	v$V
PKGNAME =	quazip-qt5-$V

SHARED_LIBS +=  quazip1-qt5               0.1 # 0.0

HOMEPAGE =	https://stachenov.github.io/quazip/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1 with static linking exception
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core bz2 m z

MODULES =		devel/cmake \
			x11/qt5

CONFIGURE_ARGS +=	-DQUAZIP_ENABLE_TESTS=ON \
			-DQUAZIP_QT_MAJOR_VERSION=5

.include <bsd.port.mk>
