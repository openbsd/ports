# $OpenBSD: Makefile,v 1.46 2021/10/31 19:33:45 sthen Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.12

CATEGORIES=	audio devel

SHARED_LIBS +=	tag	13.0
SHARED_LIBS +=	tag_c	3.0

HOMEPAGE=	https://taglib.github.io/

# LGPLv2.1 / MPLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m z

COMPILER =	base-clang ports-gcc

MASTER_SITES=	https://taglib.github.io/releases/

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/boost \
		devel/cppunit

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON \
		-DBUILD_TESTS=ON

TEST_TARGET=	check

.include <bsd.port.mk>
