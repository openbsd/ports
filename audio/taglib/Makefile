# $OpenBSD: Makefile,v 1.45 2019/07/07 16:58:46 cwen Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.11.1
REVISION=	3

CATEGORIES=	audio devel

SHARED_LIBS +=	tag	12.0	# 1.9.1
SHARED_LIBS +=	tag_c	3.0	# 0.0.0

HOMEPAGE= 	https://taglib.github.io/

# LGPLv2.1 / MPLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m z

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	https://taglib.github.io/releases/

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/boost \
		devel/cppunit

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON \
		-DBUILD_TESTS=ON

TEST_TARGET=	check

.include <bsd.port.mk>
