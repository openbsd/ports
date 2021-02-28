# $OpenBSD: Makefile,v 1.3 2021/02/28 06:19:01 rsadowski Exp $

# devel/tbb does not support 64-bits atomics on ppc32, forcing them does
# not help, see tbb's ${WRKSRC}/include/tbb/machine/mac_ppc.h
NOT_FOR_ARCHS =	powerpc

COMMENT=	tools for storage and manipulation of volumetric data

GH_ACCOUNT=	dreamworksanimation
GH_PROJECT=	openvdb
GH_TAGNAME=	v8.0.1

SHARED_LIBS +=  openvdb                   1.0 # 8.0

CATEGORIES=	graphics

HOMEPAGE=	https://www.openvdb.org/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# MPL
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} Half-2_5 blosc boost_iostreams-mt
WANTLIB +=	boost_regex-mt boost_system-mt c m tbb tbbmalloc z

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	archivers/blosc \
		devel/boost \
		devel/tbb \
		graphics/openexr

NO_TEST=	Yes

.include <bsd.port.mk>
