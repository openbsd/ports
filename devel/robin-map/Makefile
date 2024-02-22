ONLY_FOR_ARCHS=	${CXX11_ARCHS}

COMMENT=	fast hash map and hash set

GH_ACCOUNT=	Tessil
GH_PROJECT=	robin-map
GH_TAGNAME=	v1.2.1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake
TEST_DEPENDS=	devel/boost

do-test:
	cd ${WRKSRC}/tests && mkdir -p build && cd build && \
		export CC="${CC}" CFLAGS="${CFLAGS}" CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" ${CONFIGURE_ENV} \
		&& ${LOCALBASE}/bin/cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
		-G ${_MODCMAKE_GEN} .. \
		&& ${LOCALBASE}/bin/cmake --build . \
		&& ./tsl_robin_map_tests

post-install:
	mv ${PREFIX}/share/cmake/ ${PREFIX}/lib/

.include <bsd.port.mk>
