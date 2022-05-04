COMMENT-main=	advanced IRC bouncer
COMMENT-sasl=	SASL module for ZNC

DISTNAME=	znc-1.8.2
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/
REVISION-main=	4

HOMEPAGE=	https://znc.in/

MAINTAINER=	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -sasl

WANTLIB=	crypto icuuc icudata m pthread ssl z ${COMPILER_LIBCXX}
WANTLIB-main=	c ${WANTLIB}
WANTLIB-sasl=	sasl2 ${WANTLIB}

LIB_DEPENDS=	textproc/icu4c
LIB_DEPENDS-sasl=	${LIB_DEPENDS} \
			security/cyrus-sasl2

RUN_DEPENDS-sasl=	${BASE_PKGPATH},-main

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=	-DWANT_I18N=NO

CXXFLAGS+=	-DHAVE_OPAQUE_SSL

NO_TEST=	Yes

SUBST_VARS+=	VARBASE

.include <bsd.port.mk>
