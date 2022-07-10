COMMENT=	C++ library for reading and writing Zip files using streams

GH_ACCOUNT =	Zipios
GH_PROJECT =	Zipios
GH_TAGNAME =	2.2.6

PKGNAME=	zipios++-${GH_TAGNAME}

HOMEPAGE =	https://snapwebsites.org/project/zipios

CATEGORIES=	devel archivers

SHARED_LIBS +=	zipios               2.0      # .0.0

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DBUILD_ZIPIOS_TESTS=OFF

.include <bsd.port.mk>
