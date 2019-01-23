# $OpenBSD: Makefile,v 1.4 2019/01/23 17:37:50 landry Exp $

COMMENT =	point cloud storage extension for PostgreSQL

GH_TAGNAME =	v1.2.0
GH_PROJECT =	pointcloud
GH_ACCOUNT =	pgpointcloud

CATEGORIES =	geo databases

# BSD
PERMIT_PACKAGE_CDROM=	Yes

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	textproc/libxml
BUILD_DEPENDS =	databases/postgresql,-server \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/cunit

WANTLIB +=	c iconv lzma m z xml2
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS =	--with-cunit=${LOCALBASE}
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
USE_GMAKE =	Yes
#otherwise gmake defaults to g++ ?
MAKE_ENV =	CXX=c++

do-gen:
	cd ${WRKSRC} && ${AUTOCONF_ENV} ./autogen.sh

.include <bsd.port.mk>
