COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-2.0.2

CATEGORIES=	audio devel

SHARED_LIBS +=	tag	14.0
SHARED_LIBS +=	tag_c	4.0

HOMEPAGE=	https://taglib.github.io/

# LGPLv2.1 / MPLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m z

COMPILER =	base-clang ports-gcc

SITES=		https://taglib.github.io/releases/

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/cppunit \
		devel/utfcpp

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON \
		-DBUILD_TESTING=ON

TEST_TARGET=	check

# evertyhing except tests
ALL_TARGET=	tag tag_c

# build whatever is left (ca. 40 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
