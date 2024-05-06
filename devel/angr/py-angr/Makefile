COMMENT =	multi-architecture binary analysis platform
REVISION =	0

ANGR_PYTHON_MODULE =	angr

HOMEPAGE =	https://angr.io/

WANTLIB =	${COMPILER_LIBCXX} m

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/angr/py-pyvex>=${MODPY_EGG_VERSION} \
		devel/py-bitstring${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR}

# AngrServer could use (unported) rpyc
RUN_DEPENDS =	devel/angr/py-ailment>=${MODPY_EGG_VERSION} \
		devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
		devel/angr/py-claripy>=${MODPY_EGG_VERSION} \
		devel/angr/py-cle>=${MODPY_EGG_VERSION} \
		devel/angr/py-pyvex>=${MODPY_EGG_VERSION} \
		devel/capstone/python${MODPY_FLAVOR} \
		devel/py-bitstring${MODPY_FLAVOR} \
		devel/py-cachetools${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-cparser${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR} \
		devel/py-mulpyplexer${MODPY_FLAVOR} \
		devel/py-nampa${MODPY_FLAVOR} \
		devel/py-progressbar${MODPY_FLAVOR} \
		devel/py-protobuf${MODPY_FLAVOR}>=3.9.1 \
		devel/py-rich${MODPY_FLAVOR} \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-unique-log-filter${MODPY_FLAVOR} \
		math/py-networkx${MODPY_FLAVOR} \
		math/py-sympy${MODPY_FLAVOR} \
		net/py-dpkt${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

# XXX this is a bit of a mess. angr_native.so actually links against
# /usr/local/lib/pythonXXX/site-packages/unicorn/lib/libunicorn.so
# (which isn't in a place where a linked library would normally be
# found). SONAME in libunicorn.so is "libunicorn.so.1" so the
# lib-depends-check message is a bit unexpected. BDEP+RDEP is the
# simplest way to make it work. LIB_DEPENDS doesn't work because
# it is stripped unless there's a matching WANTLIB and that can't
# be done with an unversioned .so.
BUILD_DEPENDS += devel/py-unicorn${MODPY_FLAVOR}>=2.0.1
RUN_DEPENDS +=	devel/py-unicorn${MODPY_FLAVOR}>=2.0.1

USE_GMAKE =	Yes

MAKE_ENV =	CXX=${CXX} CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include/angr-vex/"

DOCDIR =	${PREFIX}/share/doc/py-${ANGR_PYTHON_MODULE}

NO_TEST =	Yes

# Remove tests otherwise they'll get installed...
post-extract:
	rm -fr ${WRKSRC}/tests/

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
