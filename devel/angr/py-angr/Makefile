# $OpenBSD: Makefile,v 1.4 2019/11/10 09:29:32 kn Exp $

COMMENT =	multi-architecture binary analysis toolkit

ANGR_PYTHON_MODULE =	angr

HOMEPAGE =	https://angr.io/

WANTLIB =	${COMPILER_LIBCXX} m

# C++11
COMPILER =	base-clang ports-gcc

# XXX: py-unicorn ships unicorn.so, but angr links against .1 - why?!
# Missing lib: libunicorn.so.1 (/usr/local/lib/python3.7/site-packages/angr/lib/angr_native.so) (NOT REACHABLE)
LIB_DEPENDS =	devel/py-unicorn${MODPY_FLAVOR}

BUILD_DEPENDS =	devel/angr/py-pyvex>=${MODPY_EGG_VERSION} \
		devel/py-bitstring${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR}

# AngrServer could use (unported) rpyc
RUN_DEPENDS =	${BUILD_DEPENDS} \
		devel/angr/py-ailment>=${MODPY_EGG_VERSION} \
		devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
		devel/angr/py-claripy>=${MODPY_EGG_VERSION} \
		devel/angr/py-cle>=${MODPY_EGG_VERSION} \
		devel/capstone/python${MODPY_FLAVOR} \
		devel/py-cachetools${MODPY_FLAVOR} \
		devel/py-cooldict${MODPY_FLAVOR} \
		devel/py-cparser${MODPY_FLAVOR} \
		devel/py-mulpyplexer${MODPY_FLAVOR} \
		devel/py-progressbar${MODPY_FLAVOR} \
		devel/py-protobuf${MODPY_FLAVOR}>=3.9.1 \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		math/py-networkx \
		net/py-dpkt${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

USE_GMAKE =	Yes

MAKE_ENV +=	C++C=${CXX}

CFLAGS +=	-I${LOCALBASE}/include/angr-vex/

DOCDIR =	${PREFIX}/share/doc/py-${ANGR_PYTHON_MODULE}

post-patch:
	${SUBST_CMD} ${WRKSRC}/native/Makefile

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
