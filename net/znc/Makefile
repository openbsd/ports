COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.8.2
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/
REVISION=	2

HOMEPAGE=	https://znc.in/

MAINTAINER=	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto icuuc icudata m pthread ssl z ${COMPILER_LIBCXX}

LIB_DEPENDS=	textproc/icu4c

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=	-DWANT_CYRUS=NO \
			-DWANT_I18N=NO \
			-DWANT_ICU=YES
CXXFLAGS+=	-DHAVE_OPAQUE_SSL

NO_TEST=	Yes

.include <bsd.port.mk>
