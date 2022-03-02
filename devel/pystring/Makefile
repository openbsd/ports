COMMENT =	C++ functions analogous to Python string methods

GH_ACCOUNT =	imageworks
GH_PROJECT =	pystring
GH_TAGNAME =	v1.1.3

SHARED_LIBS +=  pystring                  0.0 # 0.0

CATEGORIES =	devel

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE =Yes

WANTLIB +=	${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MAKE_FLAGS =	CXX=${CXX} \
		CXXFLAGS="${CXXFLAGS}"

FAKE_FLAGS =	LIBDIR="${DESTDIR}${PREFIX}/lib"

USE_GMAKE =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/pystring
	${INSTALL_DATA} ${WRKSRC}/pystring.h ${PREFIX}/include/pystring

.include <bsd.port.mk>
