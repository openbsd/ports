# $OpenBSD: Makefile,v 1.8 2020/02/06 00:40:22 jeremy Exp $

COMMENT =	point cloud storage extension for PostgreSQL

GH_TAGNAME =	v1.2.0
GH_PROJECT =	pointcloud
GH_ACCOUNT =	pgpointcloud

CATEGORIES =	geo databases

REVISION =		1
MASTER_SITES0 =		https://github.com/pgpointcloud/pointcloud/commit/
PATCHFILES =		pgpointcloud-patch1.patch{3e64c68dd4e0b9b9fdf0a74492ab49023161f6f1.diff}:0 \
			pgpointcloud-patch2.patch{fa6faa4ec4ba28b61a9f6d160624257420ce7555.diff}:0
PATCH_DIST_STRIP =	-p1

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
