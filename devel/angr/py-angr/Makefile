COMMENT =	multi-architecture binary analysis platform
REVISION =	1

ANGR_PYTHON_MODULE =	angr

HOMEPAGE =	https://angr.io/

WANTLIB =	${COMPILER_LIBCXX} m

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/angr/py-pyvex>=${MODPY_DISTV} \
		devel/py-bitstring \
		devel/py-cffi \
		devel/py-future

# AngrServer could use (unported) rpyc
RUN_DEPENDS =	devel/angr/py-ailment>=${MODPY_DISTV} \
		devel/angr/py-archinfo>=${MODPY_DISTV} \
		devel/angr/py-claripy>=${MODPY_DISTV} \
		devel/angr/py-cle>=${MODPY_DISTV} \
		devel/angr/py-pyvex>=${MODPY_DISTV} \
		devel/capstone/python \
		devel/py-bitstring \
		devel/py-cachetools \
		devel/py-cffi \
		devel/py-cparser \
		devel/py-future \
		devel/py-mulpyplexer \
		devel/py-nampa \
		devel/py-progressbar \
		devel/py-protobuf>=3.9.1 \
		devel/py-rich \
		devel/py-sortedcontainers \
		devel/py-unique-log-filter \
		math/py-networkx \
		math/py-sympy \
		net/py-dpkt \
		sysutils/py-psutil

# XXX this is a bit of a mess. angr_native.so actually links against
# /usr/local/lib/pythonXXX/site-packages/unicorn/lib/libunicorn.so
# (which isn't in a place where a linked library would normally be
# found). SONAME in libunicorn.so is "libunicorn.so.1" so the
# lib-depends-check message is a bit unexpected. BDEP+RDEP is the
# simplest way to make it work. LIB_DEPENDS doesn't work because
# it is stripped unless there's a matching WANTLIB and that can't
# be done with an unversioned .so.
BUILD_DEPENDS += devel/py-unicorn>=2.0.1
RUN_DEPENDS +=	devel/py-unicorn>=2.0.1

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
