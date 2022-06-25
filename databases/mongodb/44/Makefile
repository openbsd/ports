PORTROACH =	limitw:1,even
USE_WXNEEDED =	Yes

# The default storage engine (WiredTiger) only works on amd64.
ONLY_FOR_ARCHS = amd64
DPB_PROPERTIES = parallel

COMMENT =	scalable, high-performance document-oriented database

# db upgrades are only supported across one major version
# 3.4-3.6, 3.6-4.0, etc) and mongodump wasn't in ports until after
# OpenBSD-7.1, so holding off on >3.6 until after OpenBSD 7.2.
V =		4.4.15

DISTNAME =	mongodb-src-r$V
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
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_log-mt
WANTLIB += boost_program_options-mt  boost_system-mt boost_thread-mt
WANTLIB += c crypto curl execinfo icudata icui18n icuuc kvm m
WANTLIB += pcre pcrecpp snappy ssl stemmer yaml-cpp z zstd

MASTER_SITES =	https://fastdl.mongodb.org/src/
FIX_CRLF_FILES = src/third_party/IntelRDFPMathLib20U1/LIBRARY/src/bid_functions.h

MODULES =	devel/scons \
		lang/python

# C++17
COMPILER =	base-clang ports-gcc

MODPY_RUNDEP =	No
MODSCONS_ENV =	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS} -DBOOST_NO_USER_CONFIG -isystem ${LOCALBASE}/include/bind" \
		CXXFLAGS="${CXXFLAGS} -DBOOST_LOG_DYN_LINK" \
		LINKFLAGS="${LDFLAGS} ${LOCALBASE}/lib/libbind/libbind.a" \
		CPPPATH="${LOCALBASE}/include" \
		LIBPATH="${LOCALBASE}/lib" \
		PREFIX="${PREFIX}" \
		VERBOSE=true
MODSCONS_FLAGS += --opt=on \
		  --ssl=on \
		  --allocator=system \
		  --use-system-boost \
		  --use-system-icu \
		  --use-system-pcre \
		  --use-system-snappy \
		  --use-system-stemmer \
		  --use-system-yaml \
		  --use-system-zlib \
		  --use-system-zstd \
		  -j${MAKE_JOBS}
# --use-system-fmt fails at linking because mongo reaches into
# fmt internals; see src/mongo/logv2/log_attr.h

ALL_TARGET =	install-core
LIB_DEPENDS =	archivers/snappy \
		archivers/zstd \
		devel/boost \
		devel/pcre \
		devel/yaml-cpp \
		net/curl \
		textproc/icu4c \
		textproc/libstemmer
TEST_DEPENDS =	databases/py-mongo${MODPY_FLAVOR}

# - can't cope with OpenBSD's nameser.h with ancient defines, plus uses
# res_ninit/res_nclose which are not supported by the libc resolver
BUILD_DEPENDS =	devel/py-cheetah${MODPY_FLAVOR} \
		net/libbind \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

post-extract:
	cd ${WRKSRC}/src/third_party/mozjs-60/platform/x86_64/ && cp -R freebsd openbsd

do-install:
.for bin in mongo mongod mongos
	${INSTALL_PROGRAM} ${WRKSRC}/build/opt/mongo/${bin} ${PREFIX}/bin
	if [ -f ${WRKSRC}/debian/${bin}.1 ]; then \
	  ${INSTALL_MAN} ${WRKSRC}/debian/${bin}.1 ${PREFIX}/man/man1; \
	fi
.endfor
	${INSTALL_MAN} ${WRKSRC}/debian/mongodb-parameters.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mongodb
	${INSTALL_DATA} ${FILESDIR}/mongodb.conf \
	    ${PREFIX}/share/examples/mongodb

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} install-unittests
	cd ${WRKSRC} && ${MODPY_BIN} buildscripts/resmoke.py run \
	    --suites=unittests

.include <bsd.port.mk>
