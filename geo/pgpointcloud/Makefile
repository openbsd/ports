COMMENT =	point cloud storage extension for PostgreSQL

GH_TAGNAME =	v1.2.1
GH_PROJECT =	pointcloud
GH_ACCOUNT =	pgpointcloud
REVISION =	0

CATEGORIES =	geo databases

# BSD
PERMIT_PACKAGE=	Yes

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	textproc/libxml
BUILD_DEPENDS =	databases/postgresql,-server \
		devel/cunit

WANTLIB +=	c iconv lzma m z xml2
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_STYLE = autoreconf
CONFIGURE_ARGS =	--with-cunit=${LOCALBASE}
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		./autogen.sh
USE_GMAKE =	Yes
#otherwise gmake defaults to g++ ?
MAKE_ENV =	CXX=c++

.include <bsd.port.mk>
