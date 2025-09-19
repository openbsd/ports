PORTROACH=		skipv:6.2.0,6.2.1

BROKEN-powerpc64 =	vec_mule and vec_rl calls are ambiguous in highwayhash

COMMENT=		network analysis and security monitoring framework

DISTNAME =		zeek-6.1.1
REVISION =		2

SHARED_LIBS +=		binpac		3.0
SHARED_LIBS +=		broker		4.1
# only used at configure+build time; these libs aren't installed
SHARED_LIBS +=		caf_core	4.1

CATEGORIES=		net security

HOMEPAGE=		https://www.zeek.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += c crypto m maxminddb pcap pthread ssl z lib/libbind/bind

SITES =			https://download.zeek.org/

MODULES =		devel/cmake \
			lang/python

# c++17
COMPILER=		base-clang ports-gcc
# XXX src/modp_numtoa.c:174:30: error: use of undeclared identifier 'DBL_DECIMAL_DIG'
CFLAGS +=		-DDBL_DECIMAL_DIG=__DBL_DECIMAL_DIG__

MODPY_ADJ_FILES=	auxil/btest/btest \
			auxil/zeekctl/bin/stats-to-csv \
			auxil/zeekctl/bin/zeekctl.in \
			auxil/zeekctl/auxil/trace-summary/trace-summary

BUILD_DEPENDS=		devel/bison \
			devel/swig

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/libbind \
			net/libmaxminddb

RUN_DEPENDS =		devel/py-gitpython \
			devel/py-semantic-version \
			net/libmaxminddb,-asn \
			net/libmaxminddb,-city \
			net/libmaxminddb,-db

# XXX the bundled sqlite seems to pick up ICU4C if present and will error out if
# it gets junked during the build; I could not find a proper way to disable it
# make: don't know how to make /usr/local/include/unicode/bytestream.h
# (prerequisite of: src/CMakeFiles/broker.dir/3rdparty/sqlite3.c.o)
BUILD_DEPENDS +=	textproc/icu4c

# share/zeekctl/scripts
BUILD_DEPENDS +=	shells/bash
RUN_DEPENDS +=		misc/findutils \
			shells/bash

# share/zeek/base/utils/active-http.zeek executes curl(1)
RUN_DEPENDS +=		net/curl

# Fix undefined reference to __atomic_load_8
.if ${MACHINE_ARCH} == "hppa"
MODCMAKE_LDFLAGS +=	"-latomic"
WANTLIB +=		atomic
.endif

MODCMAKE_USE_SHARED_LIBS = No

MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib/libbind -lbind \
	   		-Wl,-rpath ${LOCALBASE}/lib/libbind

CONFIGURE_ARGS =	-DBINARY_PACKAGING_MODE=ON \
			-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DZEEK_ETC_INSTALL_DIR=${SYSCONFDIR}/zeek \
			-DZEEK_LOCAL_STATE_DIR=${LOCALSTATEDIR} \
			-DZEEK_LOG_DIR=${LOCALSTATEDIR}/log/zeek \
			-DZEEK_MAN_INSTALL_PATH=${PREFIX}/man \
			-DZEEK_SPOOL_DIR=${LOCALSTATEDIR}/spool/zeek

# Our modules only pass {PYTHON,Python3}_*, perhaps newer releases take them.
CONFIGURE_ARGS +=	-DPython_EXECUTABLE=${MODPY_BIN}


# XXX CMake Error at auxil/spicy/spicy/cmake/Util.cmake:85 (message):
# Need Flex version >= 2.6, found 2.5.39
CONFIGURE_ARGS +=	-DDISABLE_SPICY=TRUE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/auxil/broker/CMakeLists.txt \
		${WRKSRC}/auxil/binpac/lib/CMakeLists.txt \
		${WRKSRC}/auxil/broker/caf/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}/etc/zeek ${PREFIX}/share/examples/zeek
	rm -rf ${WRKINST}/var/{log,spool}/zeek ${PREFIX}/var/
	mv ${PREFIX}/share/zeek/site/ ${PREFIX}/share/examples/zeek/
	cd ${PREFIX}/share/zeek && ln -sf ${SYSCONFDIR}/zeek/site
	${MODPY_COMPILEALL} ${PREFIX}/lib/zeek/python

# handled by exec-add / exec-delete; symlink changes according to spooldir
	rm ${PREFIX}/share/zeekctl/scripts/zeekctl-config.sh

.include <bsd.port.mk>
