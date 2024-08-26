COMMENT=	synchronous multi-master replication engine

VERSION=	26.4.16
DISTNAME=	galera-${VERSION}

CATEGORIES=	databases

GH_ACCOUNT=	codership
GH_PROJECT=	galera
GH_TAGNAME=	release_${VERSION}

WSREP_API_COMMIT=	694d6ca47f5eec7873be99b7d6babccf633d1231

MAINTAINER=	Robert Nagy <robert@openbsd.org>

SITES.extra =	https://github.com/

DISTFILES=	${GH_PROJECT}-{}${GH_TAGNAME}${EXTRACT_SUFX}
DISTFILES.extra=wsrep-api-{codership/wsrep-API/archive/}${WSREP_API_COMMIT}${EXTRACT_SUFX}

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE=	Yes

# C++11, atomic ops
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/check
LIB_DEPENDS=	devel/boost

WANTLIB += ${COMPILER_LIBCXX} boost_program_options-mt c crypto m ssl

CONFIGURE_ARGS+=-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DGALERA_VERSION=${GH_TAGNAME} \
		-DGALERA_SYSTEM_LIBS=pthread

CFLAGS+=	-I${LOCALBASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

pre-configure:
	tar cf - -C ${WRKDIR}/wsrep-API-${WSREP_API_COMMIT} . | \
		tar xf - -C ${WRKSRC}/wsrep/src

post-install:
	cd ${PREFIX}/lib && ln -sf libgalera_smm.so libgalera.so

.include <bsd.port.mk>
