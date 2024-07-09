USE_WXNEEDED =	Yes

# The default storage engine (WiredTiger) only works on amd64.
ONLY_FOR_ARCHS = amd64
DPB_PROPERTIES = parallel

COMMENT =	scalable, high-performance document-oriented database
PKGNAME =	mongodb-$V

.if ${V:M3*}
SITES =		https://fastdl.mongodb.org/src/
DISTNAME =	mongodb-src-r$V
.else
GH_ACCOUNT =	mongodb
GH_PROJECT =	mongo
GH_TAGNAME =	r$V
MODSCONS_FLAGS += MONGO_VERSION=$V
.endif

CATEGORIES =	databases

HOMEPAGE =	https://www.mongodb.com/

# mongodb itself: SSPLv1
# abseil-cpp: Apache
# asio: Boost
# mozjs-60: MPL
# wiredtiger: GPLv2 or v3
# (later versions: fmt: MIT)
PERMIT_PACKAGE =	Yes

FIX_CRLF_FILES = src/third_party/IntelRDFPMathLib*/LIBRARY/src/bid_functions.h

MODULES =	devel/scons \
		lang/python

# C++14 (3.6.x), C++17 (4.x)
COMPILER =	base-clang ports-gcc

MODPY_RUNDEP =	No
MODSCONS_ENV +=	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS} -DBOOST_NO_USER_CONFIG -isystem ${LOCALBASE}/include/bind" \
		CXXFLAGS="${CXXFLAGS} -DBOOST_LOG_DYN_LINK" \
		LINKFLAGS="${LDFLAGS} ${LOCALBASE}/lib/libbind/libbind.a" \
		CPPPATH="${LOCALBASE}/include" \
		LIBPATH="${LOCALBASE}/lib" \
		VERBOSE=true
MODSCONS_FLAGS += --opt=on \
		  --ssl=on \
		  --allocator=system \
		  --use-system-boost \
		  --use-system-pcre \
		  --use-system-snappy \
		  --use-system-stemmer \
		  --use-system-yaml \
		  --use-system-zlib
# --use-system-fmt exists too, but linking fails with ports fmt (seems
# that mongo reaches into fmt internals; see src/mongo/logv2/log_attr.h)

LIB_DEPENDS +=	archivers/snappy \
		devel/boost \
		devel/pcre \
		devel/yaml-cpp \
		textproc/libstemmer
TEST_DEPENDS +=	databases/py-mongo${MODPY_FLAVOR}

# - can't cope with OpenBSD's nameser.h with ancient defines, plus uses
# res_ninit/res_nclose which are not supported by the libc resolver,
# so use libbind
BUILD_DEPENDS += \
		devel/py-cheetah${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		net/libbind \
		textproc/py-yaml${MODPY_FLAVOR}

.if !${V:M3*}
MODSCONS_FLAGS += --use-system-icu
LIB_DEPENDS +=	  textproc/icu4c
BUILD_DEPENDS +=  sysutils/py-psutil${MODPY_FLAVOR}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mongodb
	${INSTALL_DATA} ${FILESDIR}/mongodb.conf \
	    ${PREFIX}/share/examples/mongodb
