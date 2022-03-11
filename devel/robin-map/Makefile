ONLY_FOR_ARCHS=	${CXX11_ARCHS}

COMMENT=	fast hash map and hash set

GH_ACCOUNT=	Tessil
GH_PROJECT=	robin-map
GH_TAGNAME=	v0.6.3

CATEGORIES=	devel

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

TEST_DEPENDS=	devel/boost

do-test:
	cd ${WRKSRC}/tests && ${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/cmake -G ${_MODCMAKE_GEN} ${WRKSRC}/tests
	cd ${WRKSRC}/tests && exec ${SETENV} ${ALL_TEST_ENV} \
        	${NINJA} ${NINJA_FLAGS}
	cd ${WRKSRC}/tests && ./tsl_robin_map_tests

post-install:
	mv ${PREFIX}/share/cmake/ ${PREFIX}/lib/

.include <bsd.port.mk>
