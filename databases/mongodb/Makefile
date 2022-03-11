PORTROACH =	limitw:1,even
USE_WXNEEDED =	Yes

# The default storage engine (WiredTiger) only works on amd64.
ONLY_FOR_ARCHS = amd64
DPB_PROPERTIES = parallel

COMMENT =	scalable, high-performance document-oriented database

# db upgrades are only supported across one major version (3.2-3.4,
# 3.4-3.6, etc) so holding off on 3.6 until after OpenBSD 7.1.
DISTNAME =	mongodb-src-r3.4.24
PKGNAME =	${DISTNAME:S/src-r//}
CATEGORIES =	databases

HOMEPAGE =	https://www.mongodb.com/

# mongodb itself: SSPLv1
# abseil-cpp: Apache
# asio: Boost
# mozjs-60: MPL
# wiredtiger: GPLv2 or v3
# (later versions: fmt: MIT)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += boost_chrono-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto execinfo icudata icui18n icuuc
WANTLIB += kvm m pcre pcrecpp snappy ssl stemmer yaml-cpp z

MASTER_SITES =	https://fastdl.mongodb.org/src/
FIX_CRLF_FILES = src/third_party/IntelRDFPMathLib20U1/LIBRARY/src/bid_functions.h

MODULES =	devel/scons \
		lang/python

# C++14 (newer versions: C++17)
COMPILER =	base-clang ports-gcc

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP =	No
MODSCONS_USE_V2 = Yes
MODSCONS_ENV =	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS} -DBOOST_NO_USER_CONFIG" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include" \
		LIBPATH="${LOCALBASE}/lib" \
		VERBOSE=true
# (later versions: add -DBOOST_LOG_DYN_LINK to CXXFLAGS)
MODSCONS_FLAGS += --prefix="${PREFIX}" \
		  --opt=on \
		  --ssl=on \
		  --allocator=system \
		  --use-system-boost \
		  --use-system-icu \
		  --use-system-pcre \
		  --use-system-snappy \
		  --use-system-stemmer \
		  --use-system-yaml \
		  --use-system-zlib \
		  -j${MAKE_JOBS}
# (later versions: --use-system-zstd; also have --use-system-fmt but
# "fails at linking because mongo reaches into fmt internals; see
# src/mongo/logv2/log_attr.h)

ALL_TARGET =	core tools
# (later versions: ALL_TARGET =	install-core)
LIB_DEPENDS =	archivers/snappy \
		devel/boost \
		devel/pcre \
		devel/yaml-cpp \
		textproc/icu4c \
		textproc/libstemmer
TEST_DEPENDS =	databases/py-mongo${MODPY_FLAVOR}
BUILD_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR}
# later versions: BDEPs on devel/py-cheetah${MODPY_FLAVOR}
#		sysutils/py-psutil${MODPY_FLAVOR}

# later versions: post-extract:
# cd ${WRKSRC}/src/third_party/mozjs-60/platform/x86_64/ && cp -R freebsd openbsd

do-install:
.for bin in mongo mongod mongos mongobridge mongoperf
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
