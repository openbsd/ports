COMMENT=	minimalistic C client for Redis

GH_ACCOUNT=	redis
GH_PROJECT=	hiredis
GH_TAGNAME=	v1.5.0
REVISION=	0
PKGNAME=	lib${DISTNAME}

# upstream just uses the full version number, see hiredis.h
SHARED_LIBS +=	hiredis		2.0
SHARED_LIBS +=	hiredis_ssl	1.0

CATEGORIES=	databases devel

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += crypto ssl

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DENABLE_SSL=on

TEST_DEPENDS=	databases/redis/bsd

post-install:
	rm -r ${PREFIX}/build

.include <bsd.port.mk>
