# $OpenBSD: Makefile,v 1.38 2019/07/12 20:43:54 sthen Exp $

PORTROACH =	limitw:1,even
USE_WXNEEDED =	Yes

# The default storage engine (WiredTiger) only works on amd64.
ONLY_FOR_ARCHS = amd64
DPB_PROPERTIES = parallel

COMMENT =	scalable, high-performance document-oriented database

DISTNAME =	mongodb-src-r3.2.22
PKGNAME =	${DISTNAME:S/src-r//}
CATEGORIES =	databases
REVISION =	0

HOMEPAGE =	https://www.mongodb.com/

# mongodb itself: AGPLv3
# client/utils:   Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += boost_chrono-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += execinfo kvm m pcap pcre pcrecpp pthread ssl yaml-cpp
WANTLIB += z ${COMPILER_LIBCXX}

MASTER_SITES =	https://fastdl.mongodb.org/src/

MODULES =	devel/scons \
		lang/python

# XXX should come from scons module, but broken when gcc module also used:
NO_CCACHE =	Yes

COMPILER =	base-clang ports-gcc
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODSCONS_ENV =	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS} -DBOOST_NO_USER_CONFIG" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include" \
		LIBPATH="${LOCALBASE}/lib" \
		VERBOSE=true
MODSCONS_FLAGS += --prefix="${PREFIX}" \
		  --opt=on \
		  --ssl=SSL \
		  --allocator=system \
		  --use-system-boost \
		  --use-system-pcre \
		  --use-system-yaml \
		  --use-system-zlib \
		  -j${MAKE_JOBS}

ALL_TARGET =	core tools
LIB_DEPENDS =	devel/libexecinfo \
		devel/boost \
		devel/pcre \
		devel/yaml-cpp
TEST_DEPENDS =	textproc/py-yaml \
		databases/py-mongo
# icu4c support is not actually compiled in, but scons picks up the
# headers and patching this away is intrusive
BUILD_DEPENDS =	textproc/icu4c

do-install:
.for bin in mongo mongod mongos mongosniff mongobridge mongoperf
	${INSTALL_PROGRAM} ${WRKSRC}/${bin} ${PREFIX}/bin/
	if [ -f ${WRKSRC}/debian/${bin}.1 ]; then \
	  ${INSTALL_MAN} ${WRKSRC}/debian/${bin}.1 ${PREFIX}/man/man1; \
	fi
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mongodb
	${INSTALL_DATA} ${FILESDIR}/mongodb.conf \
	    ${PREFIX}/share/examples/mongodb

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} unittests
	cd ${WRKSRC} && ${MODPY_BIN} buildscripts/resmoke.py --suites=unittests

.include <bsd.port.mk>
